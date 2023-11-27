import { Router } from "express";
import { authenticateJWT } from "../middleware/auth";
import { Bundle } from "../model/bundle";
import { Store } from "../model/store";
import { BundleTypes } from "../types/bundle";

export const BundleController = ({ route }: { route: Router }) => {
  route.post("/", async (req, res) => {
    try {
      const body = BundleTypes.parse(req.body);

      console.log(body);

      if (!body) {
        return res.status(400).json({
          error: req.t("Empty body"),
        });
      }

      const find = await Bundle.findOne({
        name: body.name,
      });
      if (find) {
        return res.status(400).json({
          error: req.t("Name already exist"),
        });
      }

      const bundle = await Bundle.create({
        ...body,
      });

      return res.status(200).json({
        success: true,
        message: req.t("Bundle successfully created"),
        data: bundle,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
  route.get("/", authenticateJWT, async (req, res) => {
    try {
      const { id, name, storeId, desc } = req.query;

      let find;

      if (id) {
        find = await Bundle.findById(id);
      } else if (name) {
        find = await Bundle.findOne({ name: name });
      } else if (storeId) {
        const store = await Store.findById(storeId);
        if (!store) {
          return res.status(400).json({ error: req.t("Store not found") });
        }
        find = await Bundle.find({ storeId: store._id });
      } else if (desc) {
        const params = `.*${desc}.*`;
        find = await Bundle.find({ desc: { $regex: params, $options: "i" } });
      } else {
        return res.status(400).json({ error: req.t("Bundle not found") });
      }

      if (!find || (Array.isArray(find) && find.length === 0)) {
        return res.status(400).json({ error: req.t("Bundle not found") });
      }

      return res
        .status(200)
        .json({ success: true, message: req.t("Bundle found"), data: find });
    } catch (error: any) {
      return res.status(400).json({
        error: req.t(error.errors[0].message),
      });
    }
  });

  route.put("/", authenticateJWT, async (req, res) => {
    try {
      const body = BundleTypes.parse(req.body);
      if (!body) {
        return res.status(400).json({
          error: req.t("Bundle data doesn't valid"),
        });
      }
      const updated = await Bundle.findOneAndUpdate({ name: body.name }, body);
      if (!updated) {
        return res.status(400).json({
          error: req.t("Bundle not found"),
        });
      }
      return res.status(200).json({
        success: true,
        message: req.t("Bundle successfully deleted"),
        data: updated,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });

  route.delete("/delete/:id", authenticateJWT, async (req, res) => {
    try {
      const id = req.params;
      console.log("id...: ", id);
      const deleted = await Bundle.findByIdAndDelete(id.id);
      if (!deleted) {
        return res.status(400).json({
          error: req.t("Bundle not found"),
        });
      }
      return res.status(200).json({
        success: true,
        message: "data berhasil di hapus",
        data: deleted,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
};
