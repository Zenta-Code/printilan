import z from "zod";
import { AddressTypes } from "./address";
export const UserTypes = z.object({
  name: z
    .string({
      required_error: "Name is required",
    })
    .min(2, "Name must be at least 4 characters"),
  email: z
    .string({
      required_error: "Email is required",
    })
    .min(4, "Email must be at least 4 characters"),
  password: z
    .string({
      required_error: "Password is required",
    })
    .min(8, "Password must be at least 8 characters"),
  address: AddressTypes,
  phone: z
    .string({
      required_error: "Phone is required",
    })
    .min(10, "Phone must be at least 10 characters"),
  role: z.enum(["seller", "customer"], {
    required_error: "Role is required",
  }),
});
