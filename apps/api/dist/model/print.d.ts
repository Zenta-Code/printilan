import mongoose from "mongoose";
export declare const Print: mongoose.Model<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    type?: string | undefined;
    status?: boolean | undefined;
    brand?: string | undefined;
    model?: string | undefined;
    price?: number | undefined;
}, {}, {}, {}, mongoose.Document<unknown, {}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    type?: string | undefined;
    status?: boolean | undefined;
    brand?: string | undefined;
    model?: string | undefined;
    price?: number | undefined;
}> & {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    type?: string | undefined;
    status?: boolean | undefined;
    brand?: string | undefined;
    model?: string | undefined;
    price?: number | undefined;
} & {
    _id: mongoose.Types.ObjectId;
}, mongoose.Schema<any, mongoose.Model<any, any, any, any, any, any>, {}, {}, {}, {}, {
    timestamps: true;
}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    type?: string | undefined;
    status?: boolean | undefined;
    brand?: string | undefined;
    model?: string | undefined;
    price?: number | undefined;
}, mongoose.Document<unknown, {}, mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    type?: string | undefined;
    status?: boolean | undefined;
    brand?: string | undefined;
    model?: string | undefined;
    price?: number | undefined;
}>> & mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    type?: string | undefined;
    status?: boolean | undefined;
    brand?: string | undefined;
    model?: string | undefined;
    price?: number | undefined;
}> & {
    _id: mongoose.Types.ObjectId;
}>>;
//# sourceMappingURL=print.d.ts.map