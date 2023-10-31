import z from "zod";
export declare const PrintTypes: z.ZodObject<{
    brand: z.ZodString;
    model: z.ZodString;
    type: z.ZodString;
    status: z.ZodBoolean;
    price: z.ZodNumber;
}, "strip", z.ZodTypeAny, {
    price: number;
    type: string;
    status: boolean;
    brand: string;
    model: string;
}, {
    price: number;
    type: string;
    status: boolean;
    brand: string;
    model: string;
}>;
//# sourceMappingURL=print.d.ts.map