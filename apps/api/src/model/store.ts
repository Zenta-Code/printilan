import mongoose, { Schema } from "mongoose";

const StoreSchema = new Schema(
  {
    ownerId: mongoose.Types.ObjectId,
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
    socketId: String,
    customer: Array,
  },
  {
    typeKey: "$type",
    timestamps: true,
  }
);

export const Store = mongoose.model("Store", StoreSchema);
