import mongoose from "mongoose";
export declare const Print: mongoose.Model<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    type?: string | undefined;
    price?: number | undefined;
    status?: boolean | undefined;
    brand?: string | undefined;
    model?: string | undefined;
}, {}, {}, {}, mongoose.Document<unknown, {}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    type?: string | undefined;
    price?: number | undefined;
    status?: boolean | undefined;
    brand?: string | undefined;
    model?: string | undefined;
}> & {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    type?: string | undefined;
    price?: number | undefined;
    status?: boolean | undefined;
    brand?: string | undefined;
    model?: string | undefined;
} & {
    _id: mongoose.Types.ObjectId;
}, mongoose.Schema<any, mongoose.Model<any, any, any, any, any, any>, {}, {}, {}, {}, {
    timestamps: true;
}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    type?: string | undefined;
    price?: number | undefined;
    status?: boolean | undefined;
    brand?: string | undefined;
    model?: string | undefined;
}, mongoose.Document<unknown, {}, mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    type?: string | undefined;
    price?: number | undefined;
    status?: boolean | undefined;
    brand?: string | undefined;
    model?: string | undefined;
}>> & mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    type?: string | undefined;
    price?: number | undefined;
    status?: boolean | undefined;
    brand?: string | undefined;
    model?: string | undefined;
}> & {
    _id: mongoose.Types.ObjectId;
}>>;
//# sourceMappingURL=print.d.ts.map