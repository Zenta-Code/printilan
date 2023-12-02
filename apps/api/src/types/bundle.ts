import z from "zod";
export const BundleTypes = z.object({
  name: z
    .string({
      required_error: "Name is required",
    })
    .min(4, "Name must be at least 4 characters"),
  options: z.array(
    z.object({
      color: z.boolean(),
      price: z.number(),
    })
  ),
  storeId: z.any(),
});
