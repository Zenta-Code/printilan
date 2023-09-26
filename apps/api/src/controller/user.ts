import bcrypt from "bcrypt";
import { Router } from "express";
import { nullChecker } from "../lib/null_checker";
import { sanitize } from "../lib/sanitzer";
import { User } from "../model/user";

export const UserController = ({ route }: { route: Router }) => {
  route.post("/register", async (req, res) => {
    const isNull = nullChecker(req.body);
    if (isNull) {
      return res.status(400).json(isNull);
    }

    const password: string = req.body.password || "";
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
      email: req.body.email,
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
      name: req.body.name,
      email: req.body.email,
      password: hashedPassword,
    });
    console.log(user);
    return res.status(200).json({
      success: true,
      message: "Berhasil",
      data: sanitize(user.toObject(), ["password"]),
    });
  });
};
