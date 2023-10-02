import mongoose, { Schema } from "mongoose";

const OrderSchema = new Schema(
  {
    userId: String,
    documentId: String,
    totalPrice: Number,
  },
  {
    timestamps: true,
  }
);

export const Order = mongoose.model("Order", OrderSchema);
