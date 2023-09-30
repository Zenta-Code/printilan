import bcrypt from "bcrypt";
import { Router } from "express";
import jwt from "jsonwebtoken";
import { sanitize } from "../lib/sanitzer";
import { Print } from "../model/print";
import { PrintTypes } from "../types/print";

export const PrintController = ({ route }: { route: Router }) => {
  route.post("/register", async (req, res) => {
    const body = PrintTypes.parse(req.body);

    console.log(body);

    if (!body) {
      return res.status(400).json({
        success: false,
        message: "Body tidak boleh kosong",
      });
    }

    const find = await Print.findOne({
      brand: body.brand,
    });
    if (find) {
      return res.status(400).json({
        success: false,
        message: "brand sudah terdaftar",
      });
    }

    const print = await Print.create({
    ...body,
    })

    return res.status(200).json({
      success: true,
      message: "Berhasil",
      data: print,
    });
  });

};
