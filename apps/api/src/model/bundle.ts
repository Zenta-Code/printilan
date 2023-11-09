import mongoose, { Schema, Types } from "mongoose";

const BundleSchema = new Schema(
  {
    // _id: Types.ObjectId,
    storeId: Types.ObjectId,
    name: String,
    desc: String,
    prices: [],
  },
  {
    timestamps: true,
  }
);

export const Bundle = mongoose.model("Bundle", BundleSchema);
