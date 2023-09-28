import z from "zod";
export const PriceTypes = z.object({
  name: z
    .string({
      required_error: "Name is required",
    })
    .min(4, "Name must be at least 4 characters"),
  price: z
    .number({
      required_error: "Status is required",
    })
});