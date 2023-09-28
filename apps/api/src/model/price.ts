import mongoose, { Schema } from "mongoose";

const PriceSchema = new Schema(
  {
    name: String,
    price: Number,
  },
  {
    timestamps: true,
  }
);

export const Price = mongoose.model("Price", PriceSchema);