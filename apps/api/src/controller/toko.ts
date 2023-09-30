import { Router } from "express";
import { Toko } from "../model/toko";
import { TokoTypes } from "../types/toko";

export const TokoController = ({ route }: { route: Router }) => {
  route.post("/register", async (req, res) => {
    try {
      const body = TokoTypes.parse(req.body);

      console.log(body);

      if (!body) {
        return res.status(400).json({
          success: false,
          message: "Body tidak boleh kosong",
        });
      }

      const find = await Toko.findOne({
        name: body.name,
      });
      if (find) {
        return res.status(400).json({
          success: false,
          message: "Name sudah terdaftar",
        });
      }

      const toko = await Toko.create({
        ...body,
      });

      return res.status(200).json({
        success: true,
        message: "Berhasil",
        data: toko,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
};
