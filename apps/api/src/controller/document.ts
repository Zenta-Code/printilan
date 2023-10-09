import { Router } from "express";
import { authenticateJWT } from "../middleware/auth";
import { Document } from "../model/document";
import { DocumentTypes } from "../types/document";

export const DocumentController = ({ route }: { route: Router }) => {
  route.post("/register", async (req, res) => {
    try {
      const body = DocumentTypes.parse(req.body);

      console.log(body);

      if (!body) {
        return res.status(400).json({
          success: false,
          message: "Body tidak boleh kosong",
        });
      }
      const document = await Document.create({
        ...body,
      });

      return res.status(200).json({
        success: true,
        message: "Berhasil",
        data: document,
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
      const find = await Document.find();
      if (!find) {
        return res.status(400).json({
          success: false,
          message: "document tidak di temukan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "document berhasil ditemukan",
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
      const find = await Document.find(id);
      if (!find) {
        return res.status(400).json({
          success: false,
          message: "document tidak di temukan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "document berhasil ditemukan",
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
