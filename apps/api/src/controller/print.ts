import { Router } from "express";
import { authenticateJWT } from "../middleware/auth";
import { Print } from "../model/print";
import { PrintTypes } from "../types/print";

export const PrintController = ({ route }: { route: Router }) => {
  route.post("/register", async (req, res) => {
    try {
      const body = PrintTypes.parse(req.body);

      console.log(body);

      if (!body) {
        return res.status(400).json({
          success: false,
          message: "Body tidak boleh kosong",
        });
      }

      const find = await Print.findOne({
        model: body.model,
      });
      if (find) {
        return res.status(400).json({
          success: false,
          message: "model sudah terdaftar",
        });
      }

      const print = await Print.create({
        ...body,
      });

      return res.status(200).json({
        success: true,
        message: "Berhasil",
        data: print,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });

  route.get("/list/:brand", authenticateJWT, async (req, res) => {
    try {
      const brand = req.params;
      console.log("brand...: ", brand);
      const find = await Print.find(brand);
      if (!find) {
        return res.status(400).json({
          success: false,
          message: "print tidak di temukan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "print berhasil ditemukan",
        data: find,
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
      const find = await Print.findById(id.id);
      if (!find) {
        return res.status(400).json({
          success: false,
          message: "print tidak di temukan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "print berhasil ditemukan",
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
      const updateData = PrintTypes.parse(req.body);
      if (!updateData) {
        return res.status(400).json({
          success: false,
          message: "data tidak valid",
        });
      }
      const updatePrint = await Print.findOneAndUpdate({model: updateData.model},updateData);
      if (!updatePrint) {
        return res.status(400).json({
          success: false,
          message: "tidak bisa pembaruan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "print berhasil diperbarui",
        data: updatePrint,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
  route.delete("/delete", authenticateJWT, async (req, res) => {
    try {
      const deleteData = await Print.deleteOne();
      if (!deleteData) {
        return res.status(400).json({
          success: false,
          message: "tidak ada yang di hapus",
        });
      }
      return res.status(200).json({
        success: true,
        message: "data berhasil di hapus",
        data: deleteData,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
};
