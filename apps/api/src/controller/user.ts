import bcrypt from "bcrypt";
import { Router } from "express";
import jwt from "jsonwebtoken";
import { authenticateJWT } from "../middleware/auth";
import { Store } from "../model/store";
import { User } from "../model/user";
import { UserTypes } from "../types/user";
import { sanitize } from "../utils/sanitzer";

export const UserController = ({ route }: { route: Router }) => {
  route.post("/register", async (req, res) => {
    try {
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
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });

  route.post("/login", async (req, res) => {
    try {
      const body = req.body;

      if (body.email === undefined || body.password === undefined) {
        return res.status(400).json({
          error: "Body tidak boleh kosong",
        });
      }

      if (body.email === "" || body.password === "") {
        return res.status(400).json({
          error: "Body tidak boleh kosong",
        });
      }

      const user = await User.findOne({
        email: body.email,
      });

      if (!user) {
        return res.status(400).json({
          error: "Email tidak ditemukan",
        });
      }

      const password: string = body.password || "";

      const validPassword = await bcrypt.compare(password, user.password || "");

      if (!validPassword) {
        return res.status(400).json({
          error: "Password salah",
        });
      }

      const jwtSecret = process.env.JWT_SECRET || "JWT_SECRET";
      console.log(jwtSecret);
      const token = jwt.sign({ id: user._id }, jwtSecret, {
        expiresIn: "1d",
      });
      const store = await Store.findOne({ ownerId: user._id });
      return res.status(200).json({
        success: true,
        message: "Berhasil",
        user: sanitize(user.toObject(), ["password"]),
        store: store,
        token,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
  route.post("/me", async (req, res) => {
    try {
      const token = req.body.token;
      if (!token) {
        return res.status(400).json({ error: "Unathorized" });
      }
      const jwtSecret = process.env.JWT_SECRET || "JWT_SECRET";
      const found = jwt.verify(token, jwtSecret) as any;

      if (!found) {
        return res.status(400).json({
          error: "Unathorized",
        });
      }
      const user = await User.findById(found.id);
      return res.status(200).json({
        success: true,
        message: "user berhasil ditemukan",
        data: sanitize(user!.toObject(), ["password"]),
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
  route.delete("/delete/:id", authenticateJWT, async (req, res) => {
    try {
      const id = req.params;
      console.log("id...: ", id);
      const user = await User.findByIdAndDelete(id.id);
      if (!user) {
        return res.status(400).json({
          success: false,
          message: "user tidak di temukan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "user berhasil dihapus",
        data: sanitize(user.toObject(), ["password"]),
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
  route.put("/update", authenticateJWT, async (req, res) => {
    try {
      const updateData = UserTypes.parse(req.body);
      if (!updateData) {
        return res.status(400).json({
          success: false,
          message: "data tidak valid",
        });
      }
      const updateUser = await User.findOneAndUpdate(
        { email: updateData.email },
        updateData
      );
      if (!updateUser) {
        return res.status(400).json({
          success: false,
          message: "tidak bisa pembaruan",
        });
      }
      return res.status(200).json({
        success: true,
        message: "user berhasil diperbarui",
        data: updateUser,
      });
    } catch (error) {
      return res.status(400).json({
        success: false,
        message: error,
      });
    }
  });
};
