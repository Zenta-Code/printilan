import mongoose, { Schema, Types } from "mongoose";

const BundleSchema = new Schema(
  {
    storeId: Types.ObjectId,
    name: String,
    options: [],
  },
  {
    timestamps: true,
  }
);

export const Bundle = mongoose.model("Bundle", BundleSchema);
