import mongoose, { Schema } from "mongoose";

const PrintSchema = new Schema(
  {
    name: String,
    email: String,
    password: String,
    role: String,
  },
  {
    timestamps: true,
  }
);

export const User = mongoose.model("Print", PrintSchema);
