import z from "zod";
export declare const OrderTypes: z.ZodObject<{
    userId: z.ZodString;
    sellerId: z.ZodString;
    documentId: z.ZodString;
    totalPrice: z.ZodNumber;
}, "strip", z.ZodTypeAny, {
    userId: string;
    sellerId: string;
    documentId: string;
    totalPrice: number;
}, {
    userId: string;
    sellerId: string;
    documentId: string;
    totalPrice: number;
}>;
//# sourceMappingURL=order.d.ts.map