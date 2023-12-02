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
            color :z.boolean(),
            price: z.number(),
          })
        ),
      })
    ),
  }),
});
