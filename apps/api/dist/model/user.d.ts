import mongoose from "mongoose";
export declare const User: mongoose.Model<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    phone?: string | undefined;
    address?: {
        street?: string | undefined;
        city?: string | undefined;
        state?: string | undefined;
        country?: string | undefined;
        zipCode?: string | undefined;
    } | undefined;
    email?: string | undefined;
    password?: string | undefined;
    role?: "maintainer" | "seller" | "customer" | undefined;
}, {}, {}, {}, mongoose.Document<unknown, {}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    phone?: string | undefined;
    address?: {
        street?: string | undefined;
        city?: string | undefined;
        state?: string | undefined;
        country?: string | undefined;
        zipCode?: string | undefined;
    } | undefined;
    email?: string | undefined;
    password?: string | undefined;
    role?: "maintainer" | "seller" | "customer" | undefined;
}> & {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    phone?: string | undefined;
    address?: {
        street?: string | undefined;
        city?: string | undefined;
        state?: string | undefined;
        country?: string | undefined;
        zipCode?: string | undefined;
    } | undefined;
    email?: string | undefined;
    password?: string | undefined;
    role?: "maintainer" | "seller" | "customer" | undefined;
} & {
    _id: mongoose.Types.ObjectId;
}, mongoose.Schema<any, mongoose.Model<any, any, any, any, any, any>, {}, {}, {}, {}, {
    timestamps: true;
}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    phone?: string | undefined;
    address?: {
        street?: string | undefined;
        city?: string | undefined;
        state?: string | undefined;
        country?: string | undefined;
        zipCode?: string | undefined;
    } | undefined;
    email?: string | undefined;
    password?: string | undefined;
    role?: "maintainer" | "seller" | "customer" | undefined;
}, mongoose.Document<unknown, {}, mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    phone?: string | undefined;
    address?: {
        street?: string | undefined;
        city?: string | undefined;
        state?: string | undefined;
        country?: string | undefined;
        zipCode?: string | undefined;
    } | undefined;
    email?: string | undefined;
    password?: string | undefined;
    role?: "maintainer" | "seller" | "customer" | undefined;
}>> & mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    phone?: string | undefined;
    address?: {
        street?: string | undefined;
        city?: string | undefined;
        state?: string | undefined;
        country?: string | undefined;
        zipCode?: string | undefined;
    } | undefined;
    email?: string | undefined;
    password?: string | undefined;
    role?: "maintainer" | "seller" | "customer" | undefined;
}> & {
    _id: mongoose.Types.ObjectId;
}>>;
//# sourceMappingURL=user.d.ts.map