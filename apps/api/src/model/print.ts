import mongoose, { Schema } from "mongoose";

const UserSchema = new Schema(
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

export const User = mongoose.model("User", UserSchema);
