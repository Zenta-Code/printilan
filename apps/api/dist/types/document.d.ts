import z from "zod";
export declare const DcoumentTypes: z.ZodObject<{
    name: z.ZodString;
    type: z.ZodString;
    count: z.ZodNumber;
    size: z.ZodString;
    color: z.ZodBoolean;
    price: z.ZodNumber;
    copies: z.ZodNumber;
}, "strip", z.ZodTypeAny, {
    name: string;
    type: string;
    count: number;
    size: string;
    color: boolean;
    price: number;
    copies: number;
}, {
    name: string;
    type: string;
    count: number;
    size: string;
    color: boolean;
    price: number;
    copies: number;
}>;
//# sourceMappingURL=document.d.ts.map