import { Router } from "express";
import { authenticateJWT } from "../middleware/auth";
import { Bundle } from "../model/bundle";
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
  route.get("/list", authenticateJWT, async (req, res) => {
    try {
      const find = await Bundle.find();
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
};
