import z from "zod";
import { AddressTypes } from "./address";
import { UserTypes } from "./user";
export const StoreTypes = z.object({
  user: UserTypes,
  store: z.object({
    name: z
      .string({
        required_error: "Name is required",
      })
      .min(2, "Name must be at least 4 characters"),

    status: z.enum(["open", "close"], {
      required_error: "Status is required",
    }),
    address: AddressTypes,
    initialPrice: z.array(
      z.object({
        name: z.string(),
        options: z.array(
          z.object({
            color: z.boolean(),
            price: z.number(),
          })
        ),
      })
    ),
  }),
});

export const StoreUpdateTypes = z.object({
  name: z.string({
    required_error: "Name is required",
  }),
  phone: z.string({
    required_error: "Phone is required",
  }),
  password: z.string({
    required_error: "Password is required",
  }),
  street: z.string({
    required_error: "Street is required",
  }),
  city: z.string({
    required_error: "City is required",
  }),
  state: z.string({
    required_error: "State is required",
  }),
  country: z.string({
    required_error: "Country is required",
  }),
  zipCode: z.string({
    required_error: "Zip is required",
  }),
});
