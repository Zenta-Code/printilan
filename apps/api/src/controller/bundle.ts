import { Router } from "express";
import { authenticateJWT } from "../middleware/auth";
import { Bundle } from "../model/bundle";
import { Store } from "../model/store";
import { BundleTypes } from "../types/bundle";

export const BundleController = ({ route }: { route: Router }) => {
  route.post("/register", async (req, res) => {
    try {
      const body = BundleTypes.parse(req.body);

      console.log(body);

      if (!body) {
        return res.status(400).json({
          success: false,
          message: "Body tidak boleh kosong",
        });
      }

      const find = await Bundle.findOne({
        name: body.name,
      });
      if (find) {
        return res.status(400).json({
          success: false,
          message: "Name sudah terdaftar",
        });
      }

      const bundle = await Bundle.create({
        ...body,
      });

      return res.status(200).json({
        success: true,
        message: "Berhasil",
        data: bundle,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
  route.get("/list/:ownerId", authenticateJWT, async (req, res) => {
    try {
      const store = await Store.findOne({ ownerId: req.params.ownerId });
      if (!store) {
        return res.status(400).json({
          error: "store tidak di temukan",
        });
      }
      const find = await Bundle.find({ storeId: store._id });
      if (!find) {
        return res.status(400).json({
          error: "bundle tidak di temukan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "bundle berhasil ditemukan",
        data: find,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.get("/list/:desc", authenticateJWT, async (req, res) => {
    try {
      const desc = req.params;
      const params = `.*` + desc.desc + `.*`;
      console.log("desc...: ", params);
      const find = await Bundle.find({
        desc: { $regex: params, $options: "i" },
      });
      if (!find) {
        return res.status(400).json({
          success: false,
          message: "bundle tidak di temukan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "bundle berhasil ditemukan",
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
      const updateData = BundleTypes.parse(req.body);
      if (!updateData) {
        return res.status(400).json({
          success: false,
          message: "data tidak valid",
        });
      }
      const updateBundle = await Bundle.findOneAndUpdate(
        { name: updateData.name },
        updateData
      );
      if (!updateBundle) {
        return res.status(400).json({
          success: false,
          message: "tidak bisa pembaruan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "bundle berhasil diperbarui",
        data: updateBundle,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
  route.delete("/delete/:id", authenticateJWT, async (req, res) => {
    try {
      const id = req.params;
      console.log("id...: ", id);
      const deleteData = await Bundle.findByIdAndDelete(id.id);
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
