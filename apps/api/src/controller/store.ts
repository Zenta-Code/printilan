import { Router } from "express";
import { authenticateJWT } from "../middleware/auth";
import { Store } from "../model/store";
import { StoreTypes } from "../types/store";

export const StoreController = ({ route }: { route: Router }) => {
  route.post("/sign-up", async (req, res) => {
    try {
      const body = StoreTypes.parse(req.body);

      console.log(body);

      if (!body) {
        return res.status(400).json({
          success: false,
          message: req.t("Store data doesn't valid"),
        });
      }

      const find = await Store.findOne({
        name: body.name,
      });
      if (find) {
        return res.status(400).json({
          success: false,
          message: req.t("Store name already exist"),
        });
      }

      const store = await Store.create({
        ...body,
      });

      return res.status(200).json({
        success: true,
        message: req.t("Store successfully created"),
        data: store,
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

      if (id) {
        find = await Store.find({ _id: id });
      } else if (name) {
        find = await Store.find({
          name: name,
        });
      } else if (city) {
        const newCity = (city as string).replace(/%20/g, " ");
        find = await Store.find({
          "address.city": newCity,
        });
      } else {
        return res.status(400).json({
          error: req.t("Store not found"),
        });
      }

      if (!find || (Array.isArray(find) && find.length === 0)) {
        return res.status(400).json({ error: req.t("Store not found") });
      }

      return res
        .status(200)
        .json({ success: true, message: req.t("Store found"), data: find });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });

  route.put("/", authenticateJWT, async (req, res) => {
    try {
      const body = StoreTypes.parse(req.body);

      if (!body) {
        return res.status(400).json({
          error: req.t("Store data doesn't valid"),
        });
      }

      const updated = await Store.findOneAndUpdate(
        { name: req.body.name },
        body
      );
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

  route.delete("/delete/:id", authenticateJWT, async (req, res) => {
    try {
      const id = req.params;
      const deleted = await Store.findByIdAndDelete(id.id);
      if (!deleted) {
        return res.status(400).json({
          error: req.t("Store not found"),
        });
      }
      return res.status(200).json({
        success: true,
        message: req.t("Store successfully deleted"),
        data: deleted,
      });
    } catch (error) {
      return res.status(400).json({
        error: error,
      });
    }
  });
};
