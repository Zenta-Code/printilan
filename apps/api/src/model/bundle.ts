import mongoose, {Schema} from "mongoose";

const BundleSchema = new Schema (
    {
    name: String,
    desc: String,
    price: Number,
    },
    {
    timestamps: true,
    }
);

export const Bundle = mongoose.model("Bundle", BundleSchema);