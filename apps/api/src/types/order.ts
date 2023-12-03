import z from "zod";
export const OrderTypes = z.object({
  userId: z
    .string({
      required_error: "User Id is required",
    })
    .min(4, "Name must be at least 4 characters"),
  storeId: z
    .string({
      required_error: "Store Id is required",
    })
    .min(4, "Desc must be at least 4 characters"),
  documentId: z
    .string({
      required_error: "Document Id is required",
    })
    .min(4, "Desc must be at least 4 characters"),
  bundleId: z
    .string({
      required_error: "Bundle Id is required",
    })
    .min(4, "Desc must be at least 4 characters"),
    isColor: z.boolean({
      required_error: "Color is required",
    }),
  status: z.enum(["pending", "paid", "canceled"]),
});
