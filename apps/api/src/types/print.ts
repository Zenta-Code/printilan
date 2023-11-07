import z from "zod";
export const PrintTypes = z.object({
  brand: z
    .string({
      required_error: "Brand is required",
    })
    .min(4, "Brand must be at least 4 characters"),
  model: z
    .string({
      required_error: "Model is required",
    })
    .min(3, "Model must be at least 5 characters"),
  type: z
    .string({
      required_error: "Type is required",
    })
    .min(4, "Type must be at least 10 characters"),
  status: z.boolean({
    required_error: "Status is required",
  }),
  price: z
    .number({
      required_error: "Price is required",
    })
    .min(3, "Type must be at least 3 characters"),
});
