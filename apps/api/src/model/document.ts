import mongoose, { Schema } from "mongoose";

const DocumentSchema = new Schema(
  {
    name: String,
    type: String,
    count: Number,
    size: String,
    color: Boolean,
    price: Number,
    copies: Number,
    
  },
  {
    timestamps: true,
  }
);

export const Document = mongoose.model("Document", DocumentSchema);