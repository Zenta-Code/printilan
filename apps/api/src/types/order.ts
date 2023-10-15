import z from "zod";
export const OrderTypes = z.object({
  userId: z
    .string({
      required_error: "userId is required",
    })
    .min(4, "Name must be at least 4 characters"),
  sellerId: z
    .string({
      required_error: "sellerId is required",
    })
    .min(4, "Desc must be at least 4 characters"),
  documentId: z
    .string({
      required_error: "documentId is required",
    })
    .min(4, "Desc must be at least 4 characters"),
  totalPrice: z
    .number({
      required_error: "totalPrice is required",
    })
    .min(3, "Type must be at least 3 characters"),
});
