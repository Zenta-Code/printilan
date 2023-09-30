import z from "zod";
export const DocumentTypes = z.object({
  name: z
    .string({
      required_error: "Name is required",
    })
    .min(4, "Name must be at least 4 characters"),
  type: z
    .string({
      required_error: "Type is required",
    })
    .min(4, "Type must be at least 10 characters"),
  count: z
    .number({
      required_error: "Count is required",
    }),
  size: z
    .string({
      required_error: "Size is required",
    })
    .min(1, "Size must be at least 1 characters"),
  color: z
    .boolean({
      required_error: "Color is required",
    }),
  price: z
    .number({
      required_error: "Prize is required",
    }),
  copies: z
    .number({
      required_error: "Copies is required",
    }),
});