import { Router } from "express";
import * as midtransClient from "midtrans-client";
import { Types } from "mongoose";

import { authenticateJWT } from "../middleware/auth";
import { Document } from "../model/document";
import { Order } from "../model/order";
import { Store } from "../model/store";
import { User } from "../model/user";
import { OrderTypes } from "../types/order";
export const OrderController = ({ route }: { route: Router }) => {
  route.get("/clear/:storeId", authenticateJWT, async (req, res) => {
    try {
      const params = req.params;
      console.log("id...: ", params);
      const find = await Order.deleteMany({
        storeId: new Types.ObjectId(params.storeId),
      });
      console.log("find...: ", find);
      if (!find) {
        return res.status(400).json({
          error: "order tidak di temukan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "order berhasil ditemukan",
        data: find,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.post("/payment", authenticateJWT, async function (req, res) {
    try {
      const serverKey = process.env.DEV_MIDTRANS_SERVER_KEY || "";
      const clientKey = process.env.DEV_MIDTRANS_CLIENT_KEY || "";

      const snap = new midtransClient.Snap({
        isProduction: false,
        serverKey: serverKey,
        clientKey: clientKey,
      });
      console.log("serverKey: ", serverKey);
      console.log("clientKey: ", clientKey);
      console.log("body: ", req.body);
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
      const body = req.body;
      console.log("=== CALLBACK ===");
      console.log("body: ", body);
      console.log("=== CALLBACK ===");
      res.status(200).json(body);
    } catch (error) {
      console.log("error: ", error);
      res.status(400).json({
        error: "Midtrans Error",
      });
    }
  });
  route.post("/register", async (req, res) => {
    try {
      const body = OrderTypes.parse(req.body);

      console.log(body);

      if (!body) {
        return res.status(400).json({
          error: "Body tidak boleh kosong",
        });
      }

      const order = await Order.create({
        ...body,
      });

      return res.status(200).json({
        success: true,
        message: "Berhasil",
        data: order,
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
  route.put("/update", authenticateJWT, async (req, res) => {
    try {
      const updateData = OrderTypes.parse(req.body);
      if (!updateData) {
        return res.status(400).json({
          error: "data tidak valid",
        });
      }
      const updateOrder = await Order.findOneAndUpdate(
        { id: req.body.id },
        updateData
      );
      if (!updateOrder) {
        return res.status(400).json({
          error: "tidak bisa pembaruan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "order berhasil diperbarui",
        data: updateOrder,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
};
