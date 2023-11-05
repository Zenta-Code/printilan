import mongoose from "mongoose";
export declare const Store: mongoose.Model<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    phone?: string | undefined;
    ownerId?: any;
    address?: {
        street?: string | undefined;
        city?: string | undefined;
        state?: string | undefined;
        country?: string | undefined;
        zipCode?: string | undefined;
    } | undefined;
}, {}, {}, {}, mongoose.Document<unknown, {}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    phone?: string | undefined;
    ownerId?: any;
    address?: {
        street?: string | undefined;
        city?: string | undefined;
        state?: string | undefined;
        country?: string | undefined;
        zipCode?: string | undefined;
    } | undefined;
}> & {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    phone?: string | undefined;
    ownerId?: any;
    address?: {
        street?: string | undefined;
        city?: string | undefined;
        state?: string | undefined;
        country?: string | undefined;
        zipCode?: string | undefined;
    } | undefined;
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
    ownerId?: any;
    address?: {
        street?: string | undefined;
        city?: string | undefined;
        state?: string | undefined;
        country?: string | undefined;
        zipCode?: string | undefined;
    } | undefined;
}, mongoose.Document<unknown, {}, mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    phone?: string | undefined;
    ownerId?: any;
    address?: {
        street?: string | undefined;
        city?: string | undefined;
        state?: string | undefined;
        country?: string | undefined;
        zipCode?: string | undefined;
    } | undefined;
}>> & mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    phone?: string | undefined;
    ownerId?: any;
    address?: {
        street?: string | undefined;
        city?: string | undefined;
        state?: string | undefined;
        country?: string | undefined;
        zipCode?: string | undefined;
    } | undefined;
}> & {
    _id: mongoose.Types.ObjectId;
}>>;
//# sourceMappingURL=store.d.ts.map