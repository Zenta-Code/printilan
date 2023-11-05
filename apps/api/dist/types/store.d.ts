import z from "zod";
export declare const StoreTypes: z.ZodObject<{
    name: z.ZodString;
    address: z.ZodString;
    phone: z.ZodString;
    ownerId: z.ZodString;
}, "strip", z.ZodTypeAny, {
    name: string;
    phone: string;
    ownerId: string;
    address: string;
}, {
    name: string;
    phone: string;
    ownerId: string;
    address: string;
}>;
//# sourceMappingURL=store.d.ts.map