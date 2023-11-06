import mongoose from "mongoose";
export declare const Document: mongoose.Model<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    type?: string | undefined;
    count?: number | undefined;
    price?: number | undefined;
    size?: string | undefined;
    color?: boolean | undefined;
    copies?: number | undefined;
}, {}, {}, {}, mongoose.Document<unknown, {}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    type?: string | undefined;
    count?: number | undefined;
    price?: number | undefined;
    size?: string | undefined;
    color?: boolean | undefined;
    copies?: number | undefined;
}> & {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    type?: string | undefined;
    count?: number | undefined;
    price?: number | undefined;
    size?: string | undefined;
    color?: boolean | undefined;
    copies?: number | undefined;
} & {
    _id: mongoose.Types.ObjectId;
}, mongoose.Schema<any, mongoose.Model<any, any, any, any, any, any>, {}, {}, {}, {}, {
    timestamps: true;
}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    type?: string | undefined;
    count?: number | undefined;
    price?: number | undefined;
    size?: string | undefined;
    color?: boolean | undefined;
    copies?: number | undefined;
}, mongoose.Document<unknown, {}, mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    type?: string | undefined;
    count?: number | undefined;
    price?: number | undefined;
    size?: string | undefined;
    color?: boolean | undefined;
    copies?: number | undefined;
}>> & mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    name?: string | undefined;
    type?: string | undefined;
    count?: number | undefined;
    price?: number | undefined;
    size?: string | undefined;
    color?: boolean | undefined;
    copies?: number | undefined;
}> & {
    _id: mongoose.Types.ObjectId;
}>>;
//# sourceMappingURL=document.d.ts.map