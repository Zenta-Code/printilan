import mongoose from "mongoose";
export declare const Order: mongoose.Model<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    userId?: string | undefined;
    documentId?: string | undefined;
    totalPrice?: number | undefined;
}, {}, {}, {}, mongoose.Document<unknown, {}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    userId?: string | undefined;
    documentId?: string | undefined;
    totalPrice?: number | undefined;
}> & {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    userId?: string | undefined;
    documentId?: string | undefined;
    totalPrice?: number | undefined;
} & {
    _id: mongoose.Types.ObjectId;
}, mongoose.Schema<any, mongoose.Model<any, any, any, any, any, any>, {}, {}, {}, {}, {
    timestamps: true;
}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    userId?: string | undefined;
    documentId?: string | undefined;
    totalPrice?: number | undefined;
}, mongoose.Document<unknown, {}, mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    userId?: string | undefined;
    documentId?: string | undefined;
    totalPrice?: number | undefined;
}>> & mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    userId?: string | undefined;
    documentId?: string | undefined;
    totalPrice?: number | undefined;
}> & {
    _id: mongoose.Types.ObjectId;
}>>;
//# sourceMappingURL=orde.d.ts.map