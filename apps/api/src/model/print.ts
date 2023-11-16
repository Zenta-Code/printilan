import mongoose, { Schema, Types } from "mongoose";

const PrintSchema = new Schema(
  {
    storeId: Types.ObjectId,
    printerName: String,
    isBusy: Boolean,
  },
  {
    timestamps: true,
  }
);

export const Print = mongoose.model("Print", PrintSchema);
