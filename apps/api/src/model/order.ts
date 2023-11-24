import mongoose, { Schema, Types } from "mongoose";

const OrderSchema = new Schema(
  {
    userId: Types.ObjectId,
    storeId: Types.ObjectId,
    documentId: Types.ObjectId,
    totalPrice: Number,
  },
  {
    timestamps: true,
  }
);

export const Order = mongoose.model("Order", OrderSchema);
