import bcrypt from "bcrypt";
import { Router } from "express";
import jwt from "jsonwebtoken";
import { sanitize } from "../lib/sanitzer";
import { User } from "../model/user";
import { UserTypes } from "../types/user";

export const UserController = ({ route }: { route: Router }) => {
  route.post("/register", async (req, res) => {
    const body = UserTypes.parse(req.body);

    console.log(body);

    if (!body) {
      return res.status(400).json({
        success: false,
        message: "Body tidak boleh kosong",
      });
    }

    const password: string = body.password || "";
    const confirmPassword: string = req.body.confirmPassword || "";

    if (password !== confirmPassword) {
      return res.status(400).json({
        success: false,
        message: "Password tidak sesuai",
      });
    }

    if (password.length < 8) {
      return res.status(400).json({
        success: false,
        message: "Password minimal 8 karakter",
      });
    }

    const find = await User.findOne({
      email: body.email,
    });
    if (find) {
      return res.status(400).json({
        success: false,
        message: "Email sudah terdaftar",
      });
    }
    const salt = await bcrypt.genSalt(10);
    const hashedPassword = await bcrypt.hash(password, salt);

    const user = await User.create({
      ...body,
      password: hashedPassword,
    });
    console.log(user);
    return res.status(200).json({
      success: true,
      message: "Berhasil",
      data: sanitize(user.toObject(), ["password"]),
    });
  });

  route.post("/login", async (req, res) => {
    const body = req.body;

    if (body.email === undefined || body.password === undefined) {
      return res.status(400).json({
        success: false,
        message: "Body tidak boleh kosong",
      });
    }

    if (body.email === "" || body.password === "") {
      return res.status(400).json({
        success: false,
        message: "Body tidak boleh kosong",
      });
    }

    const user = await User.findOne({
      email: body.email,
    });

    if (!user) {
      return res.status(400).json({
        success: false,
        message: "Email tidak ditemukan",
      });
    }

    const password: string = body.password || "";

    const validPassword = await bcrypt.compare(password, user.password || "");

    if (!validPassword) {
      return res.status(400).json({
        success: false,
        message: "Password salah",
      });
    }

    const jwtSecret = process.env.JWT_SECRET || "JWT_SECRET";
    console.log(jwtSecret);
    const token = jwt.sign({ id: user._id }, jwtSecret, {
      expiresIn: "1d",
    });
    return res.status(200).json({
      success: true,
      message: "Berhasil",
      user: sanitize(user.toObject(), ["password"]),
      token,
    });
  });
};
