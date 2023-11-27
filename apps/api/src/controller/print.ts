import { Router } from "express";
import { Types } from "mongoose";
import { authenticateJWT } from "../middleware/auth";
import { Print } from "../model/print";
import { PrintTypes } from "../types/print";

export const PrintController = ({ route }: { route: Router }) => {
  route.post("/register", async (req, res) => {
    try {
      console.log(req.body);

      const listPrinter = req.body.printers.map((item: any) => {
        return {
          printerName: item.printerName,
          storeId: new Types.ObjectId(item.storeId),
          status: item.status,
        };
      });
      console.log(listPrinter);
      for (let i = 0; i < listPrinter.length; i++) {
        const find = await Print.findOne({
          printerName: listPrinter[i].printerName,
          storeId: listPrinter[i].storeId,
        });
        if (!find) {
          const newPrint = await Print.create(listPrinter[i]);
          if (!newPrint) {
            return res.status(400).json({
              error: "print gagal di tambahkan",
            });
          }
        }
      }
      return res.status(200).json({
        success: true,
        message: "print berhasil di tambahkan",
      });
    } catch (error) {
      console.log(error);
      return res.status(400).json({
        error: error,
      });
    }
  });

  route.get("/", authenticateJWT, async (req, res) => {
    try {
      const { id, storeId } = req.query;

      let find;

      if (id) {
        find = await Print.findById(id);
      } else if (storeId) {
        find = await Print.find({ storeId: storeId });
      } else {
        res.status(400).json({ error: req.t("Print not found") });
      }

      if (!find || (Array.isArray(find) && find.length === 0)) {
        return res.status(400).json({ error: req.t("Printer not found") });
      }

      return res
        .status(200)
        .json({ success: true, message: req.t("Printer found"), data: find });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.put("/update", authenticateJWT, async (req, res) => {
    try {
      const updateData = PrintTypes.parse(req.body);
      if (!updateData) {
        return res.status(400).json({
          success: false,
          message: "data tidak valid",
        });
      }
      const updatePrint = await Print.findOneAndUpdate(
        { model: req.body.model },
        updateData
      );
      if (!updatePrint) {
        return res.status(400).json({
          error: "tidak bisa pembaruan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "print berhasil diperbarui",
        data: updatePrint,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.delete("/delete", authenticateJWT, async (req, res) => {
    try {
      const deleteData = await Print.deleteOne();
      if (!deleteData) {
        return res.status(400).json({
          error: "tidak ada yang di hapus",
        });
      }
      return res.status(200).json({
        success: true,
        message: "data berhasil di hapus",
        data: deleteData,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
};
