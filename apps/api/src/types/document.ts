import z from "zod";
export const DocumentTypes = z.object({
  fileName: z
    .string({
      required_error: "Name is required",
    })
    .min(4, "Name must be at least 4 characters"),
    filePath: z.string({
      required_error: "Path is required",
    }),
  type: z
    .string({
      required_error: "Type is required",
    })
    .min(4, "Type must be at least 10 characters"),
  totalPage: z.number({
    required_error: "Total Page is required",
  }),
  size: z
    .string({
      required_error: "Size is required",
    })
    .min(1, "Size must be at least 1 characters"),
  color: z.boolean({
    required_error: "Color is required",
  }),
  totalPrice: z
    .number({
      required_error: "Prize is required",
    })
    .min(3, "Type must be at least 3 characters"),
  copies: z.number({
    required_error: "Copies is required",
  }),
});
