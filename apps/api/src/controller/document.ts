import { Router } from "express";
import fs from "fs";
import path from "path";
import { upload } from "../libs/storage";
import { authenticateJWT } from "../middleware/auth";
import { Document } from "../model/document";
import { DocumentTypes } from "../types/document";

export const DocumentController = ({ route }: { route: Router }) => {
  route.post(
    "/",
    upload.single("file"),
    authenticateJWT,
    async function (req, res) {
      try {
        // const find = await Document.findOne({
        //   fileName: req.file?.originalname,
        //   userId: req.body.userId,
        // });
        // if (find) {
        //   return res.status(400).json({
        //     error: req.t("Document name already exist"),
        //   });
        // }
        const bodyMap = {
          fileName: req.file?.originalname,
          filePath: req.file?.path,
          type: req!.file!.mimetype,
          userId: req.body.userId,
          copies: parseInt(req.body.copies),
          size: req.body.size,
          color: req.body.color === "true" ? true : false,
          totalPrice: parseInt(req.body.totalPrice),
          totalPage: parseInt(req.body.totalPage),
        };
        const body = DocumentTypes.parse(bodyMap);
        if (!body) {
          return res.status(400).json({
            error: req.t("Document data doesn't valid"),
          });
        }
        const document = await Document.create(bodyMap);
        res.send({
          success: true,
          message: req.t("Document successfully uploaded"),
          data: [document],
        });
      } catch (error) {
        res.status(400).json({
          error: error,
        });
      }
    }
  );
  route.get("/download/", authenticateJWT, async function (req, res) {
    const { dir, userId, fileName } = req.query as any;
    const filePath = path.join(__dirname, "../..", dir, userId, fileName);
    console.log("filePath", filePath);
    const bytes = fs.readFileSync(filePath);
    res.send({
      name: fileName,
      type: "application/pdf",
      data: bytes,
    });
  });
  route.get("/", authenticateJWT, async (req, res) => {
    try {
      const { id, fileName, userId } = req.query;

      let find;

      if (id) {
        find = [await Document.findById(id)];
      } else if (userId) {
        find = await Document.find({ userId: userId });
      } else if (fileName) {
        find = [await Document.findOne({ fileName: fileName })];
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
  route.delete("/:id", authenticateJWT, async (req, res) => {
    try {
      const document = await Document.findById(req.params.id);
      if (!document) {
        return res.status(400).json({
          error: req.t("Document not found"),
        });
      }

      const filePath = path.join(
        __dirname,
        "../..",
        document.filePath as string
      );

      fs.unlinkSync(filePath);
      const deleted = await Document.deleteOne({ _id: req.params.id });
      return res.status(200).json({
        success: true,
        message: req.t("Document successfully deleted"),
        data: [deleted],
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
};
