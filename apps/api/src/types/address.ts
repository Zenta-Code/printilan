import z from "zod";

export const AddressTypes = z.object({
  street: z
    .string({
      required_error: "Street is required",
    })
    .min(4, "Street must be at least 4 characters"),
  city: z
    .string({
      required_error: "City is required",
    })
    .min(4, "City must be at least 4 characters"),
  state: z
    .string({
      required_error: "State is required",
    })
    .min(4, "State must be at least 4 characters"),
  country: z
    .string({
      required_error: "Country is required",
    })
    .min(4, "Country must be at least 4 characters"),
  zipCode: z
    .string({
      required_error: "Zip is required",
    })
    .min(4, "Zip must be at least 4 characters"),
});
