import z from "zod";
export const BundleTypes = z.object({
  name: z
    .string({
      required_error: "Name is required",
    })
    .min(4, "Name must be at least 4 characters"),
  desc: z
    .string({
      required_error: "Desc is required",
    })
    .min(4, "Desc must be at least 4 characters"),
  prices: z
    .array(
      z.object({
        option: z.string(),
        price: z.number(),
      })
    )
    .min(1, "Price must have at least 1 item"),
  storeId: z.any(),
});
