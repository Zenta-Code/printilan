import mongoose from "mongoose";
export declare const User: mongoose.Model<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    email?: string | undefined;
    password?: string | undefined;
    address?: string | undefined;
    phone?: string | undefined;
    role?: "maintainer" | "seller" | "user" | undefined;
}, {}, {}, {}, mongoose.Document<unknown, {}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    email?: string | undefined;
    password?: string | undefined;
    address?: string | undefined;
    phone?: string | undefined;
    role?: "maintainer" | "seller" | "user" | undefined;
}> & {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    email?: string | undefined;
    password?: string | undefined;
    address?: string | undefined;
    phone?: string | undefined;
    role?: "maintainer" | "seller" | "user" | undefined;
} & {
    _id: mongoose.Types.ObjectId;
}, mongoose.Schema<any, mongoose.Model<any, any, any, any, any, any>, {}, {}, {}, {}, {
    timestamps: true;
}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    email?: string | undefined;
    password?: string | undefined;
    address?: string | undefined;
    phone?: string | undefined;
    role?: "maintainer" | "seller" | "user" | undefined;
}, mongoose.Document<unknown, {}, mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    email?: string | undefined;
    password?: string | undefined;
    address?: string | undefined;
    phone?: string | undefined;
    role?: "maintainer" | "seller" | "user" | undefined;
}>> & mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    email?: string | undefined;
    password?: string | undefined;
    address?: string | undefined;
    phone?: string | undefined;
    role?: "maintainer" | "seller" | "user" | undefined;
}> & {
    _id: mongoose.Types.ObjectId;
}>>;
//# sourceMappingURL=user.d.ts.map