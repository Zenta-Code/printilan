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
        data: {
          filePath: res.req.file?.path,
          documentId: document._id,
        },
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
          error: req.t("Document data doesn't valid"),
        });
      }

      const find = await Document.findOne({
        name: body.name,
      });
      if (find) {
        return res.status(400).json({
          error: req.t("Document name already exist"),
        });
      }

      const document = await Document.create({
        ...body,
      });

      return res.status(200).json({
        success: true,
        message: req.t("Document successfully created"),
        data: document,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.get("/", authenticateJWT, async (req, res) => {
    try {
      const { id, name, userId } = req.query;

      let find;

      if (id) {
        find = Document.find({ _id: id });
      } else if (userId) {
        find = Document.find({ userId: userId });
      } else if (name) {
        find = Document.find({ name: name });
      }

      if (!find || (Array.isArray(find) && find.length === 0)) {
        return res.status(400).json({ error: req.t("Document not found") });
      }

      return res
        .status(200)
        .json({ success: true, message: req.t("Document found"), data: find });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.delete("/delete/:id", authenticateJWT, async (req, res) => {
    try {
      const id = req.params;
      const deleted = await Document.findByIdAndDelete(id.id);
      if (!deleted) {
        return res.status(400).json({
          error: req.t("Document not found"),
        });
      }
      return res.status(200).json({
        success: true,
        message: req.t("Document successfully deleted"),
        data: deleted,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.put("/update", authenticateJWT, async (req, res) => {
    try {
      const body = DocumentTypes.parse(req.body);
      if (!body) {
        return res.status(400).json({
          error: req.t("Document data doesn't valid"),
        });
      }
      const updated = await Document.findOneAndUpdate(
        { name: body.name },
        body
      );
      if (!updated) {
        return res.status(400).json({
          error: req.t("Document not found"),
        });
      }
      return res.status(200).json({
        success: true,
        message: req.t("Document successfully deleted"),
        data: updated,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
};
