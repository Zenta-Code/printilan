import * as crypto from "crypto";
import { Router } from "express";
import * as midtransClient from "midtrans-client";
import { authenticateJWT } from "../middleware/auth";
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

  Order.watch().on("change", async (data) => {
    console.log("data", data);
  });
  const core = new midtransClient.CoreApi({
    isProduction: false,
    serverKey: serverKey,
    clientKey: process.env.MIDTRANS_CLIENT_KEY || "",
  });

  Order.watch().on("change", async (data) => {
    console.log("data", data);
  });
  route.post("/payment", authenticateJWT, async function (req, res) {
    try {
      snap
        .createTransaction(req.body)
        .then((transaction) => {
          console.log("transaction: ", transaction);
          res.status(200).json(transaction);
        })
        .catch((error) => {
          console.log("error: ", error);
          res.status(400).json({
            error: "Midtrans Error",
          });
        });
    } catch (error) {
      res.status(400).json({
        error: "Midtrans Error",
      });
    }
  });
  route.post("/callback", async function (req, res) {
    try {
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
      const body = OrderTypes.parse(req.body);

      console.log(body);

      if (!body) {
        return res.status(400).json({
          error: req.t("Order data doesn't valid"),
        });
      }

      const order = await Order.create({
        ...body,
      });

      const user = await User.findById(order.userId);
      const store = await Store.findById(order.storeId);
      const document = await Document.findById(order.documentId);
      const userName = user?.name?.split(" ");

      const payment = await snap.createTransaction({
        transaction_details: {
          order_id: order.id,
          gross_amount: order.totalPrice,
        },
        credit_card: {
          secure: true,
        },

        customer_details: {
          first_name: userName?.[0] || "",
          last_name: userName?.[1] || "",
          email: user?.email || "",
          phone: user?.phone || "",
          billing_address: {
            first_name: userName?.[0] || "",
            last_name: userName?.[1] || "",
            phone: user?.phone || "",
            adrress: user?.address?.street || "",
            city: user?.address?.city || "",
            postal_code: user?.address?.zipCode || 0,
          },
        },

        item_details: [
          {
            id: order.id,
            price: order.totalPrice,
            quantity: document?.copies || 1,
            name: order.documentId || "",
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
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.get("/", authenticateJWT, async (req, res) => {
    try {
      const { id, storeId, userId } = req.query;

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
          listOfOrder.push({
            userId: order[i].userId,
            storeId: order[i].storeId,
            documentId: order[i].documentId,
            order: order[i],
            document,
            user,
            store,
          });
        }
        find = listOfOrder;
      } else if (userId) {
        const user = await User.findById(userId);
        if (!user) {
          return res.status(400).json({ error: "User not found" });
        }
        find = await Order.find({ userId: user._id });
      } else {
        return res.status(400).json({ error: req.t("Order not found") });
      }

      if (!find || (Array.isArray(find) && find.length === 0)) {
        return res.status(400).json({ error: req.t("Order not found") });
      }

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
};
