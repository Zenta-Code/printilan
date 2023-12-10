import mongoose, { Schema } from "mongoose";

const KodePosSchema = new Schema(
  {
    kelurahan: String,
    kecamatan: String,
    kabupaten: String,
    kodepos: Number,
  },
  {
    timestamps: true,
  }
);

export const KodePos = mongoose.model("KodePos", KodePosSchema);
