import { Router } from "express";
import fs from "fs";
import { Types } from "mongoose";
import path from "path";
import { upload } from "../libs/storage";
import { authenticateJWT } from "../middleware/auth";
import { Document } from "../model/document";
import { DocumentTypes } from "../types/document";

export const DocumentController = ({ route }: { route: Router }) => {
  route.post(
    "/upload",
    upload.single("file"),
    authenticateJWT,
    async function (req, res) {
      console.log("res.file", res.req.file?.path);
      const document = await Document.create({
        fileName: res.req.file?.path,
        type: req!.file!.mimetype,
        userId: new Types.ObjectId(req.body.userId),
      });
      res.send({
        success: true,
        message: "file berhasil di upload",
        filePath: res.req.file?.path,
        documentId: document._id,
      });
    }
  );
  route.get(
    "/download/:dir/:userId/:fileName",
    authenticateJWT,
    async function (req, res) {
      const dir = req.params.dir;
      const userId = req.params.userId;
      const fileName = req.params.fileName;
      const filePath = path.join(__dirname, "../..", dir, userId, fileName);
      console.log("filePath", filePath);
      const bytes = fs.readFileSync(filePath);
      res.send({
        name: fileName,
        type: "application/pdf",
        data: bytes,
      });
    }
  );
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

      const find = await Document.findOne({
        name: body.name,
      });
      if (find) {
        return res.status(400).json({
          error: "model sudah terdaftar",
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
        error: error,
      });
    }
  });
  route.get("/list/:id", authenticateJWT, async (req, res) => {
    try {
      const id = req.params;
      console.log("id...: ", id);
      const find = await Document.findById(id.id);
      if (!find) {
        return res.status(400).json({
          error: "user tidak di temukan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "user berhasil ditemukan",
        data: find,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.delete("/delete/:id", authenticateJWT, async (req, res) => {
    try {
      const id = req.params;
      console.log("id...: ", id);
      const deleteData = await Document.findByIdAndDelete(id.id);
      if (!deleteData) {
        return res.status(400).json({
          error: "user tidak di temukan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "user berhasil dihapus",
        data: deleteData,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.put("/update", authenticateJWT, async (req, res) => {
    try {
      const updateData = DocumentTypes.parse(req.body);
      if (!updateData) {
        return res.status(400).json({
          error: "data tidak valid",
        });
      }
      const updateDocument = await Document.findOneAndUpdate(
        { name: updateData.name },
        updateData
      );
      if (!updateDocument) {
        return res.status(400).json({
          error: "tidak bisa pembaruan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "document berhasil diperbarui",
        data: updateDocument,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
};
