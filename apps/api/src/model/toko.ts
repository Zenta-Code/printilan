import mongoose, { Schema } from "mongoose";

const TokoSchema = new Schema(
  {
    name: String,
    address: String,
    phone: String,
    ownerId: String,
  },
  {
    timestamps: true,
  }
);

export const Toko = mongoose.model("Toko", TokoSchema);
