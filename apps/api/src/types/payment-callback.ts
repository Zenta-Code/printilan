import z from "zod";

export const PaymentCallbackTypes = z.object({
  transaction_time: z.string({
    required_error: "Transaction time is required",
  }),
  transaction_status: z.string({
    required_error: "Transaction status is required",
  }),
  transaction_id: z.string({
    required_error: "Transaction id is required",
  }),
  three_ds_status: z.any({
    required_error: "Three ds status is required",
  }),
  status_message: z.string({
    required_error: "Status message is required",
  }),
  status_code: z.string({
    required_error: "Status code is required",
  }),
  signature_key: z.string({
    required_error: "Signature key is required",
  }),
  payment_type: z.string({
    required_error: "Payment type is required",
  }),
  order_id: z.string({
    required_error: "Order id is required",
  }),
  metadata: z.object({}).optional(),
  merchant_id: z.string({
    required_error: "Merchant id is required",
  }),
  masker_card: z.any({
    required_error: "Masker card is required",
  }),
  gross_amount: z.string({
    required_error: "Gross amount is required",
  }),
  fraud_status: z.string({
    required_error: "Fraud status is required",
  }),
  expiry_time: z.string({
    required_error: "Expiry time is required",
  }),
  eci: z.string({
    required_error: "Eci is required",
  }),
  currency: z.string({
    required_error: "Currency is required",
  }),
  channel_response_message: z.string({
    required_error: "Channel response message is required",
  }),
  channel_response_code: z.string({
    required_error: "Channel response code is required",
  }),
  card_type: z.string({
    required_error: "Card type is required",
  }),
  bank: z.string({
    required_error: "Bank is required",
  }),
  approval_code: z.string({
    required_error: "Approval code is required",
  }),
});
