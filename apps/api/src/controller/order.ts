import { Router } from "express";
import { authenticateJWT } from "../middleware/auth";
import { Order } from "../model/order";
import { OrderTypes } from "../types/order";

export const OrderController = ({ route }: { route: Router }) => {
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
  route.get("/list/:id", authenticateJWT, async (req, res) => {
    try {
      const id = req.params;
      console.log("id...: ", id);
      const find = await Order.findById(id.id);
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
}
