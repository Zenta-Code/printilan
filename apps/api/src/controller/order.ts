import { Router } from "express";
import * as midtransClient from "midtrans-client";
import { Types } from "mongoose";

import { authenticateJWT } from "../middleware/auth";
import { Order } from "../model/order";
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
          success: false,
          message: "order tidak di temukan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "order berhasil ditemukan",
        data: find,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
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
    } catch (error) {}
  });
  route.post("/register", async (req, res) => {
    try {
      const body = OrderTypes.parse(req.body);

      console.log(body);

      if (!body) {
        return res.status(400).json({
          success: false,
          message: "Body tidak boleh kosong",
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
        success: false,
        message: error,
      });
    }
  });
  route.get("/list/:storeId", authenticateJWT, async (req, res) => {
    try {
      const params = req.params;
      console.log("id...: ", params);
      const find = await Order.find({
        storeId: new Types.ObjectId(params.storeId),
      });
      console.log("find...: ", find);
      if (!find) {
        return res.status(400).json({
          success: false,
          message: "order tidak di temukan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "order berhasil ditemukan",
        data: find,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
  route.put("/update", authenticateJWT, async (req, res) => {
    try {
      const updateData = OrderTypes.parse(req.body);
      if (!updateData) {
        return res.status(400).json({
          success: false,
          message: "data tidak valid",
        });
      }
      const updateOrder = await Order.findOneAndUpdate(
        { id: req.body.id },
        updateData
      );
      if (!updateOrder) {
        return res.status(400).json({
          success: false,
          message: "tidak bisa pembaruan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "order berhasil diperbarui",
        data: updateOrder,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
};
