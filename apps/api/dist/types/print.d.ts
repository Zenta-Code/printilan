import z from "zod";
export declare const PrintTypes: z.ZodObject<{
    brand: z.ZodString;
    model: z.ZodString;
    type: z.ZodString;
    status: z.ZodBoolean;
    price: z.ZodNumber;
}, "strip", z.ZodTypeAny, {
    type: string;
    price: number;
    status: boolean;
    brand: string;
    model: string;
}, {
    type: string;
    price: number;
    status: boolean;
    brand: string;
    model: string;
}>;
//# sourceMappingURL=print.d.ts.map