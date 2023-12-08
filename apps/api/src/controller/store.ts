import bcrypt from "bcrypt";
import { Router } from "express";
import { authenticateJWT } from "../middleware/auth";
import { Bundle } from "../model/bundle";
import { Print } from "../model/print";
import { Store } from "../model/store";
import { User } from "../model/user";
import { BundleTypes } from "../types/bundle";
import { StoreTypes } from "../types/store";

export const StoreController = ({ route }: { route: Router }) => {
  route.post("/sign-up", async (req, res) => {
    try {
      req.body.store.address = req.body.user.address;
      const body = StoreTypes.parse(req.body);

      console.log(body);

      if (!body) {
        return res.status(400).json({
          success: false,
          message: req.t("Store data doesn't valid"),
        });
      }
      const find = await Store.findOne({
        name: body.store.name,
      });
      if (find) {
        return res.status(400).json({
          error: req.t("Store name already exist"),
        });
      }
      const password: string = body.user.password || "";
      const confirmPassword: string = body.user.confirmPassword || "";
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

      const salt = await bcrypt.genSalt(10);
      const hashedPassword = await bcrypt.hash(password, salt);
      body.user.password = hashedPassword;
      let user = await User.findOne({
        email: body.user.email,
      });
      if (user) {
        user = await User.findByIdAndUpdate(user._id, {
          name: body.user.name,
          email: body.user.email,
          password: hashedPassword,
          address: body.user.address,
          phone: body.user.phone,
          role: body.user.role,
        });
      } else {
        user = await User.create({
          name: body.user.name,
          email: body.user.email,
          password: hashedPassword,
          address: body.user.address,
          phone: body.user.phone,
          role: body.user.role,
        });
        console.log(user);
      }

      const store = await Store.create({
        name: body.store.name,
        address: body.store.address,
        phone: body.user.phone,
        status: body.store.status,
        ownerId: user?._id,
      });

      let bundle: any[] = [];

      await Promise.all(
        body.store.initialPrice.map(async (item) => {
          const valid = BundleTypes.parse(item);
          if (valid) {
            const createdBundle = await Bundle.create({
              storeId: store._id,
              name: valid.name,
              options: valid.options,
            });
            bundle.push(createdBundle);
          }
        })
      );

      return res.status(200).json({
        success: true,
        message: req.t("Store successfully created"),
        store: store,
        bundle: bundle,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.get("/", authenticateJWT, async (req, res) => {
    try {
      const { id, name, city } = req.query;

      let find;
      let bundles: any[] = [];

      if (id) {
        find = await Store.find({ _id: id });
      } else if (name) {
        find = await Store.find({
          name: name,
        });
      } else if (city) {
        const newCity = (city as string).replace(/%20/g, " ");

        find = await Store.find({
          status: "open",
          "address.city": newCity,
        });

        if (find.length > 0) {
          await Promise.all(
            find.map(async (item) => {
              const findBundles = await Bundle.find({ storeId: item._id });
              bundles = [...bundles, ...findBundles];
            })
          );
        }
      } else {
        return res.status(400).json({
          error: req.t("Store not found"),
        });
      }

      if (!find || (Array.isArray(find) && find.length === 0)) {
        return res.status(400).json({ error: req.t("Store not found") });
      }
      return res.status(200).json({
        success: true,
        message: req.t("Store found"),
        data: find,
        bundle: bundles,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });

  route.put("/:id", authenticateJWT, async (req, res) => {
    try {
      const body = StoreTypes.parse(req.body);

      if (!body) {
        return res.status(400).json({
          error: req.t("Store data doesn't valid"),
        });
      }

      const updated = await Store.findByIdAndUpdate(req.params.id, body);
      if (!updated) {
        return res.status(400).json({
          error: req.t("Store not found"),
        });
      }
      return res.status(200).json({
        success: true,
        message: req.t("Store successfully updated"),
        data: updated,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });

  route.delete("/:id", authenticateJWT, async (req, res) => {
    try {
      const id = req.params;
      const store = await Store.findById(id.id);
      if (!store) {
        return res.status(400).json({
          error: req.t("Store not found"),
        });
      }
      const bundle = await Bundle.deleteMany({ storeId: store.id });
      if (!bundle) {
        return res.status(400).json({
          error: req.t("Bundle not found"),
        });
      }

      await User.findByIdAndDelete(store.ownerId);

      await Store.findByIdAndDelete(store.id);

      await Print.deleteMany({ storeId: store.id });

      return res.status(200).json({
        success: true,
        message: req.t("Store successfully deleted"),
        data: store,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
};
