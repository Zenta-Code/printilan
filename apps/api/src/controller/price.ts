import { Router } from "express";
import { Price } from "../model/price";
import { PriceTypes } from "../types/price";

export const PriceController = ({ route }: { route: Router }) => {
  route.post("/register", async (req, res) => {
    try {
      const body = PriceTypes.parse(req.body);

      console.log(body);

      if (!body) {
        return res.status(400).json({
          success: false,
          message: "Body tidak boleh kosong",
        });
      }

      const find = await Price.findOne({
        name: body.name,
      });
      if (find) {
        return res.status(400).json({
          success: false,
          message: "Name sudah terdaftar",
        });
      }

      const price = await Price.create({
        ...body,
      });

      return res.status(200).json({
        success: true,
        message: "Berhasil",
        data: price,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
};
