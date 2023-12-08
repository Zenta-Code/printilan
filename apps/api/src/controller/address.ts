import { Router } from "express";
import { authenticateJWT } from "../middleware/auth";
import { KodePos } from "../model/kodepos";

export const AddressController = ({ route }: { route: Router }) => {
  route.get("/district", authenticateJWT, async (req, res) => {
    try {
      console.log("Address Request", req.query);
      const { postalCode } = req.query;
      let kodePos;
      if (postalCode) {
        kodePos = await KodePos.findOne({
          kodepos: postalCode,
        });
      } else {
        return res.status(400).json({
          error: req.t("Address not found"),
        });
      }

      if (!kodePos) {
        return res.status(400).json({
          error: req.t("Address not found"),
        });
      }

      return res.status(200).json({
        success: true,
        message: req.t("Address found"),
        data: kodePos.kecamatan,
      });
    } catch (error) {
      return res.status(400).json({
        error: req.t("Address not found"),
      });
    }
  });
};
