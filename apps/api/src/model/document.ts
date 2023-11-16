import mongoose, { Schema, Types } from "mongoose";

const DocumentSchema = new Schema(
  {
    fileName: String,
    type: String,
    count: Number,
    size: String,
    color: Boolean,
    price: Number,
    copies: Number,
    userId: Types.ObjectId,
  },
  {
    timestamps: true,
  }
);

export const Document = mongoose.model("Document", DocumentSchema);
