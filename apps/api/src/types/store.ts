import z from "zod";
export const StoreTypes = z.object({
  name: z
    .string({
      required_error: "Name is required",
    })
    .min(4, "Name must be at least 4 characters"),
  address: z
    .string({
      required_error: "Address is required",
    })
    .min(4, "Address must be at least 4 characters"),
  phone: z
    .string({
      required_error: "Phone is required",
    })
    .min(10, "Phone must be at least 10 characters"),
  ownerId: z
    .string({
      required_error: "Owner Id is required",
    })
    .min(10, "Owner Id must be at least 10 characters"),
});
