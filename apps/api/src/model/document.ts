import mongoose, { Schema, Types } from "mongoose";

const DocumentSchema = new Schema(
  {
    fileName: String,
    filePath: String,
    type: String,
    totalPage: Number,
    size: String,
    color: Boolean, 
    copies: Number,
    userId: Types.ObjectId,
  },
  {
    timestamps: true,
  }
);

export const Document = mongoose.model("Document", DocumentSchema);
