import mongoose, { Schema } from "mongoose";

const PrintSchema = new Schema(
  {
    brand: String,
    model: String,
    type: String,
    status: Boolean,
  },
  {
    timestamps: true,
  }
);

export const Print = mongoose.model("Print", PrintSchema);
