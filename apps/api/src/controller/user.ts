import bcrypt from "bcrypt";
import { Router } from "express";
import jwt from "jsonwebtoken";
import { ZodError } from "zod";
import { authenticateJWT } from "../middleware/auth";
import { Store } from "../model/store";
import { User } from "../model/user";
import { UserTypes } from "../types/user";
import { sanitize } from "../utils/sanitzer";

export const UserController = ({ route }: { route: Router }) => {
  route.post("/sign-up", async (req, res) => {
    try {
      const body = UserTypes.parse(req.body);
      console.log("UserController -> sign-up -> body :\n", body);
      if (!body) {
        return res.status(400).json({
          error: req.t("Empty data"),
        });
      }

      const password: string = body.password || "";
      const confirmPassword: string = req.body.confirmPassword || "";

      if (password !== confirmPassword) {
        return res.status(400).json({
          error: req.t("Password doesn't match"),
        });
      }

      if (password.length < 8) {
        return res.status(400).json({
          error: req.t("Password must be at least 8 characters"),
        });
      }

      const find = await User.findOne({
        email: body.email,
      });
      if (find) {
        return res.status(400).json({
          error: req.t("Email already registered"),
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
        message: req.t("Sign up success"),
        data: sanitize(user.toObject(), ["password"]),
      });
    } catch (error: any) {
      if (error instanceof ZodError) {
        console.log(error);
        return res.status(400).json({
          error: req.t(error.errors[0].message),
        });
      }
    }
  });

  route.post("/sign-in", async (req, res) => {
    try {
      const body = req.body;

      if (body.email === undefined || body.password === undefined) {
        return res.status(400).json({
          error: req.t("Empty body"),
        });
      }

      if (body.email === "" || body.password === "") {
        return res.status(400).json({
          error: req.t("Empty body"),
        });
      }

      const user = await User.findOne({
        email: body.email,
      });

      if (!user) {
        return res.status(400).json({
          error: req.t("Email not found"),
        });
      }

      const password: string = body.password || "";

      const validPassword = await bcrypt.compare(password, user.password || "");

      if (!validPassword) {
        return res.status(400).json({
          error: req.t("Wrong password"),
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
        message: req.t("Sign in success"),
        user: sanitize(user.toObject(), ["password"]),
        store: store,
        token,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.get("/", authenticateJWT, async (req, res) => {
    try {
      const { id, email } = req.query;

      let find;

      if (id) {
        find = await User.findById(id);
      } else if (email) {
        find = await User.findOne({ email: email });
      }

      if (!find) {
        return res.status(400).json({
          error: req.t("User not found"),
        });
      }

      return res.status(200).json({
        success: true,
        message: req.t("User found"),
        data: [sanitize(find!.toObject(), ["password"])],
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.delete("/:id", authenticateJWT, async (req, res) => {
    try {
      const user = await User.findById(req.params.id);
      if (!user) {
        return res.status(400).json({
          error: req.t("User not found"),
        });
      }
      await User.findByIdAndDelete(user._id);
      return res.status(200).json({
        success: true,
        message: req.t("User successfully deleted"),
        data: sanitize(user.toObject(), ["password"]),
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.put("/:id", authenticateJWT, async (req, res) => {
    try {
      const updated = UserTypes.parse(req.body);
      if (!updated) {
        return res.status(400).json({
          error: req.t("User data doesn't valid"),
        });
      }
      const updateUser = await User.findOneAndUpdate(
        { email: updated.email },
        updated
      );
      if (!updateUser) {
        return res.status(400).json({
          error: req.t("User not found"),
        });
      }
      return res.status(200).json({
        success: true,
        message: req.t("User successfully updated"),
        data: updateUser,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
};
