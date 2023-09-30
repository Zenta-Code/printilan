import z from "zod";
export declare const UserTypes: z.ZodObject<{
    name: z.ZodString;
    email: z.ZodString;
    password: z.ZodString;
    address: z.ZodString;
    phone: z.ZodString;
    role: z.ZodEnum<["maintainer", "seller", "user"]>;
}, "strip", z.ZodTypeAny, {
    name: string;
    email: string;
    password: string;
    address: string;
    phone: string;
    role: "maintainer" | "seller" | "user";
}, {
    name: string;
    email: string;
    password: string;
    address: string;
    phone: string;
    role: "maintainer" | "seller" | "user";
}>;
//# sourceMappingURL=user.d.ts.map