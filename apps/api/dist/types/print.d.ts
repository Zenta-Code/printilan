import z from "zod";
export declare const PrintTypes: z.ZodObject<{
    brand: z.ZodString;
    model: z.ZodString;
    type: z.ZodString;
    status: z.ZodBoolean;
    price: z.ZodNumber;
}, "strip", z.ZodTypeAny, {
    brand: string;
    model: string;
    type: string;
    status: boolean;
    price: number;
}, {
    brand: string;
    model: string;
    type: string;
    status: boolean;
    price: number;
}>;
//# sourceMappingURL=print.d.ts.map