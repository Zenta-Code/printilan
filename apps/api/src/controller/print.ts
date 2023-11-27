import { Router } from "express";
import { Types } from "mongoose";
import { authenticateJWT } from "../middleware/auth";
import { Print } from "../model/print";
import { PrintTypes } from "../types/print";

export const PrintController = ({ route }: { route: Router }) => {
  route.post("/", async (req, res) => {
    try {
      const list = req.body.printers.map((item: any) => {
        return {
          printerName: item.printerName,
          storeId: new Types.ObjectId(item.storeId),
          status: item.status,
        };
      });

      for (let i = 0; i < list.length; i++) {
        const find = await Print.findOne({
          printerName: list[i].printerName,
          storeId: list[i].storeId,
        });
        if (!find) {
          const newPrint = await Print.create(list[i]);
          if (!newPrint) {
            return res.status(400).json({
              error: "print gagal di tambahkan",
            });
          }
        }
      }
      return res.status(200).json({
        success: true,
        message: req.t("Print successfully created"),
        data: list,
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
      const body = PrintTypes.parse(req.body);
      if (!body) {
        return res.status(400).json({
          error: req.t("Print data doesn't valid"),
        });
      }
      const updated = await Print.findOneAndUpdate(
        { model: req.body.model },
        body
      );
      if (!updated) {
        return res.status(400).json({
          error: req.t("Print not found"),
        });
      }
      return res.status(200).json({
        success: true,
        message: req.t("Print successfully updated"),
        data: updated,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.delete("/delete", authenticateJWT, async (req, res) => {
    try {
      const deleted = await Print.deleteOne();
      if (!deleted) {
        return res.status(400).json({
          error: req.t("Print not found"),
        });
      }
      return res.status(200).json({
        success: true,
        message: req.t("Print successfully deleted"),
        data: deleted,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
};
