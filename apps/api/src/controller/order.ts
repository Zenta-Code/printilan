import { Parser } from "@json2csv/plainjs";
import * as crypto from "crypto";
import { Router } from "express";
import fs from "fs";
import xlsx, { ISettings } from "json-as-xlsx";
import * as midtransClient from "midtrans-client";
import { authenticateJWT } from "../middleware/auth";
import { Bundle } from "../model/bundle";
import { Document } from "../model/document";
import { Order } from "../model/order";
import { Store } from "../model/store";
import { User } from "../model/user";
import { OrderTypes } from "../types/order";
import { PaymentCallbackTypes } from "../types/payment-callback";

export const OrderController = ({ route }: { route: Router }) => {
  const serverKey = process.env.MIDTRANS_SERVER_KEY || "";

  const snap = new midtransClient.Snap({
    isProduction: false,
    serverKey: serverKey,
    clientKey: process.env.MIDTRANS_CLIENT_KEY || "",
  });

  const core = new midtransClient.CoreApi({
    isProduction: false,
    serverKey: serverKey,
    clientKey: process.env.MIDTRANS_CLIENT_KEY || "",
  });

  route.post("/callback", async function (req, res) {
    try {
      console.log("======= INCOMING CALLBACK ==========");
      console.log("Date: ", new Date().toISOString());
      console.log(
        "Sender IP :",
        req.headers["x-real-ip"] || req.connection.remoteAddress
      );
      console.log("Body: ", req.body);
      console.log("====================================");

      const body = PaymentCallbackTypes.parse(req.body);

      if (!body) {
        return res.status(400).json({
          error: "Midtrans Error",
        });
      }

      const sk = body.signature_key;
      const orderId = body.order_id;
      const statusCode = body.status_code;
      const grossAmount = body.gross_amount;

      const mySignature = crypto
        .createHash("sha512")
        .update(`${orderId}${statusCode}${grossAmount}${serverKey}`)
        .digest("hex");

      if (mySignature !== sk) {
        return res.status(400).json({
          error: "Midtrans Error",
        });
      }

      const transaction = await core.transaction.status(orderId);

      if (!transaction) {
        return res.status(400).json({
          error: "Midtrans Error",
        });
      }

      const channel_response_code = transaction?.channel_response_code;

      if (channel_response_code !== "00") {
        return res.status(400).json({
          error: transaction?.status_message,
        });
      }

      const order = await Order.findByIdAndUpdate(orderId, { status: "paid" });
      res.status(200).json({
        success: true,
        message: "Payment success",
        data: order,
      });
    } catch (error) {
      console.log("error: ", error);
      res.status(400).json({
        error: "Midtrans Error",
      });
    }
  });

  route.post("/", async (req, res) => {
    try {
      req.body.status = "pending";

      console.log("req.body", req.body);
      const body = OrderTypes.parse(req.body);

      console.log("body", body);

      if (!body) {
        return res.status(400).json({
          error: req.t("Order data doesn't valid"),
        });
      }

      const order = await Order.create({ ...body });

      const [user, store, document, bundle] = await Promise.all([
        User.findById(order.userId),
        Store.findById(order.storeId),
        Document.findById(order.documentId),
        Bundle.findById(order.bundleId),
      ]);

      const userName = user?.name?.split(" ");
      const isColor = body.isColor;
      const option = bundle?.options?.find((item) => item.color === isColor);

      console.log("Option", option, "\n\n");
      console.log("Document", document, "\n\n");

      const totalPrice =
        (option?.price || 0) *
        (document?.totalPage || 0) *
        (document?.copies || 1);

      const updated = await Order.findByIdAndUpdate(order.id, {
        totalPrice: totalPrice,
      });

      const payment = await snap.createTransaction({
        transaction_details: {
          order_id: order.id,
          gross_amount: totalPrice,
        },
        credit_card: { secure: true },
        customer_details: {
          first_name: userName?.[0] || "",
          last_name: userName?.[1] || "",
          email: user?.email || "",
          phone: user?.phone || "",
          billing_address: {
            first_name: userName?.[0] || "",
            last_name: userName?.[1] || "",
            phone: user?.phone || "",
            address: user?.address?.street || "",
            city: user?.address?.city || "",
            postal_code: user?.address?.zipCode || 0,
          },
        },
        item_details: [
          {
            id: order.id,
            price: totalPrice,
            quantity: document?.copies || 1,
            name:
              String(document?.fileName).length > 15
                ? String(document?.fileName).substring(
                    String(document?.fileName).length - 15,
                    String(document?.fileName).length
                  )
                : document?.fileName || "",
            merchant_name: store?.name || "",
          },
        ],
      });

      return res.status(200).json({
        success: true,
        message: req.t("Order successfully created"),
        data: order,
        payment: payment,
      });
    } catch (error) {
      console.error("Error:", error);
      return res.status(500).json({
        error: req.t("Internal server error"),
      });
    }
  });
  route.get("/", authenticateJWT, async (req, res) => {
    try {
      const { id, storeId, userId, limit } = req.query;

      let find;

      if (id) {
        find = await Order.findById(id);
      } else if (storeId) {
        const store = await Store.findById(storeId);
        if (!store) {
          return res.status(400).json({ error: "Store not found" });
        }
        const order = await Order.find({ storeId: store._id });
        let listOfOrder = [];

        for (let i = 0; i < order.length; i++) {
          const document = await Document.findById(order[i].documentId);
          const user = await User.findById(order[i].userId);
          const store = await Store.findById(order[i].storeId);
          const bundle = await Bundle.findById(order[i].bundleId);
          listOfOrder.push({
            userId: order[i].userId,
            storeId: order[i].storeId,
            documentId: order[i].documentId,
            order: order[i],
            document,
            user,
            store,
            bundle,
          });
        }
        find = listOfOrder;
      } else if (userId && limit) {
        const n = parseInt(limit as string);

        const user = await User.findById(userId);

        if (!user) {
          return res.status(400).json({ error: "User not found" });
        }

        const order = await Order.find({ userId: user._id })
          .sort({ createdAt: -1 })
          .limit(n);

        let listOfOrder = [];

        for (let i = 0; i < order.length; i++) {
          const document = await Document.findById(order[i].documentId);
          const user = await User.findById(order[i].userId);
          const store = await Store.findById(order[i].storeId);
          const bundle = await Bundle.findById(order[i].bundleId);
          listOfOrder.push({
            userId: order[i].userId,
            storeId: order[i].storeId,
            documentId: order[i].documentId,
            order: order[i],
            document,
            user,
            store,
            bundle,
          });
        }
        find = listOfOrder;
      } else if (userId) {
        const user = await User.findById(userId);
        if (!user) {
          return res.status(400).json({ error: "User not found" });
        }
        const order = await Order.find({ userId: user._id });

        let listOfOrder = [];

        for (let i = 0; i < order.length; i++) {
          const document = await Document.findById(order[i].documentId);
          const store = await Store.findById(order[i].storeId);
          const bundle = await Bundle.findById(order[i].bundleId);
          listOfOrder.push({
            userId: order[i].userId,
            storeId: order[i].storeId,
            documentId: order[i].documentId,
            order: order[i],
            document,
            user,
            store,
            bundle,
          });
        }
        find = listOfOrder;
      } else {
        return res.status(400).json({ error: req.t("Order not found") });
      }

      if (!find || (Array.isArray(find) && find.length === 0)) {
        return res.status(400).json({ error: req.t("Order not found") });
      }

      console.log("find", find);

      return res
        .status(200)
        .json({ success: true, message: req.t("Order found"), data: find });
    } catch (error: any) {
      return res.status(400).json({
        error: req.t(error.errors[0].message),
      });
    }
  });
  route.put("/", authenticateJWT, async (req, res) => {
    try {
      const body = OrderTypes.parse(req.body);

      if (!body) {
        return res.status(400).json({
          error: req.t("Order data doesn't valid"),
        });
      }

      const updated = await Order.findOneAndUpdate({ id: req.body.id }, body);

      if (!updated) {
        return res.status(400).json({
          error: req.t("Order not found"),
        });
      }

      return res.status(200).json({
        success: true,
        message: req.t("Order successfully updated"),
        data: updated,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.get("/report", authenticateJWT, async (req, res) => {
    try {
      const { storeId, startDate, endDate, option } = req.query;
      console.log("==== GET REPORT ====");
      console.log("storeId", storeId);
      console.log("startDate", startDate);
      console.log("endDate", endDate);
      console.log("====================");

      const store = await Store.findById(storeId);

      if (!store) {
        return res.status(400).json({ error: "Store not found" });
      }

      const orders = await Order.find({
        storeId: store._id,
        createdAt: {
          $gte: new Date(startDate as string),
          $lt: new Date(endDate as string),
        },
      });

      if (orders.length === 0) {
        return res.status(400).json({ error: "No orders found" });
      }

      let listOfOrder = [];

      for (let i = 0; i < orders.length; i++) {
        const orderDocument = await Document.findById(orders[i].documentId);
        const orderUser = await User.findById(orders[i].userId);
        const orderStore = await Store.findById(orders[i].storeId);
        listOfOrder.push({
          userId: orders[i].userId,
          storeId: orders[i].storeId,
          documentId: orders[i].documentId,
          order: orders[i],
          document: orderDocument,
          user: orderUser,
          store: orderStore,
        });
      }
      // create folder if not exist
      if (!fs.existsSync(`./files/store/${store.name}`)) {
        fs.mkdirSync(`./files/store/${store.name}`);
      }

      if (option === "csv") {
        const json2csv = new Parser({
          fields: [
            "Customer Name",
            "Customer Email",
            "Customer Phone",
            "Store Name",
            "Document Name",
            "Total Price",
            "Status",
            "Date",
          ],
        });
        const mapJson = listOfOrder.map((item) => {
          return {
            "Customer Name": item.user?.name || "",
            "Customer Email": item.user?.email,
            "Customer Phone": item.user?.phone,
            "Store Name": item.store?.name,
            "Document Name": item.document?.fileName,
            "Total Price": item.order.totalPrice,
            Status: item.order.status,
            Date: item.order.updatedAt,
          };
        });

        const csv = json2csv.parse(mapJson);
        const location = `./files/store/${store.name}/${startDate} - ${endDate}.csv`;
        fs.writeFile(location, csv, function (err) {
          if (err) throw err;
          console.log("file saved");
          return res.download(location, (err) => {
            if (err) {
              return res.status(400).json({ error: "File not found" });
            }
          });
        });
      } else if (option === "xlsx") {
        const content: any[] = listOfOrder.map((item) => {
          return {
            "Customer Name": item.user?.name || "",
            "Customer Email": item.user?.email,
            "Customer Phone": item.user?.phone,
            "Store Name": item.store?.name,
            "Document Name": item.document?.fileName,
            "Total Price": item.order.totalPrice,
            Status: item.order.status,
            Date: item.order.updatedAt,
          };
        });

        console.log("content", content);

        const data = [
          {
            sheet: `${startDate}-${endDate}`,
            columns: [
              { label: "Customer Name", value: "Customer Name" },
              { label: "Customer Email", value: "Customer Email" },
              { label: "Customer Phone", value: "Customer Phone" },
              { label: "Store Name", value: "Store Name" },
              { label: "Document Name", value: "Document Name" },
              {
                label: "Total Price",
                value: "Total Price",
              },
              { label: "Status", value: "Status" },
              { label: "Date", value: "Date" },
            ],
            content: content,
          },
        ];

        const location = `./files/store/${store.name}/${startDate} - ${endDate}.xlsx`;
        const settings: ISettings = {
          writeOptions: {
            type: "buffer",
            bookType: "xlsx",
          },
        };
        const file: Buffer | undefined = xlsx(data, settings);

        console.log("file", file);

        if (!file) {
          return res.status(400).json({ error: "File not found" });
        }

        fs.writeFile(location, file, function (err) {
          if (err) throw err;
          console.log("file saved");
          return res.download(location, (err) => {
            if (err) {
              return res.status(400).json({ error: "File not found" });
            }
          });
        });
      }
    } catch (error) {
      console.error("Error:", error);
      return res.status(400).json({
        error: error,
      });
    }
  });
};
