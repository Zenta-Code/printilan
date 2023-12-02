import mongoose, { Schema } from "mongoose";

const StoreSchema = new Schema(
  {
    // _id: Schema.Types.ObjectId,
    name: String,
    address: {
      street: String,
      city: String,
      state: String,
      country: String,
      zipCode: String,
    },
    phone: String,
    status: String,
    ownerId: mongoose.Types.ObjectId,
  },
  {
    typeKey: "$type",
    timestamps: true,
  }
);

export const Store = mongoose.model("Store", StoreSchema);
