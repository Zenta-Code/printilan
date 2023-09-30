import { Router } from "express";
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

      const find = await Document.findOne({
        name: body.name,
      });
      if (find) {
        return res.status(400).json({
          success: false,
          message: "Name sudah terdaftar",
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
};
