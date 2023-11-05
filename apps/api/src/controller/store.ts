import { Router } from "express";
import { Store } from "../model/store";
import { StoreTypes } from "../types/store";

export const StoreController = ({ route }: { route: Router }) => {
  route.post("/register", async (req, res) => {
    try {
      const body = StoreTypes.parse(req.body);

      console.log(body);

      if (!body) {
        return res.status(400).json({
          success: false,
          message: "Body tidak boleh kosong",
        });
      }

      const find = await Store.findOne({
        name: body.name,
      });
      if (find) {
        return res.status(400).json({
          success: false,
          message: "Name sudah terdaftar",
        });
      }

      const store = await Store.create({
        ...body,
      });

      return res.status(200).json({
        success: true,
        message: "Berhasil",
        data: store,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
};
