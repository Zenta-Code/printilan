import z from "zod";
export declare const DocumentTypes: z.ZodObject<{
    name: z.ZodString;
    type: z.ZodString;
    count: z.ZodNumber;
    size: z.ZodString;
    color: z.ZodBoolean;
    price: z.ZodNumber;
    copies: z.ZodNumber;
}, "strip", z.ZodTypeAny, {
    name: string;
    price: number;
    type: string;
    count: number;
    size: string;
    color: boolean;
    copies: number;
}, {
    name: string;
    price: number;
    type: string;
    count: number;
    size: string;
    color: boolean;
    copies: number;
}>;
//# sourceMappingURL=document.d.ts.map