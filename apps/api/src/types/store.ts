import z from "zod";
import { AddressTypes } from "./address";
export const StoreTypes = z.object({
  name: z
    .string({
      required_error: "Name is required",
    })
    .min(4, "Name must be at least 4 characters"),
  address: AddressTypes,
  phone: z
    .string({
      required_error: "Phone is required",
    })
    .min(10, "Phone must be at least 10 characters"),
  ownerId: z
    .string({
      required_error: "Owner Id is required",
    })
    .min(10, "Owner Id must be at least 10 characters"),
});
