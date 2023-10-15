"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
exports.__esModule = true;
exports.OrderTypes = void 0;
var zod_1 = __importDefault(require("zod"));
exports.OrderTypes = zod_1["default"].object({
    userId: zod_1["default"]
        .string({
        required_error: "userId is required"
    })
        .min(4, "Name must be at least 4 characters"),
    sellerId: zod_1["default"]
        .string({
        required_error: "sellerId is required"
    })
        .min(4, "Desc must be at least 4 characters"),
    documentId: zod_1["default"]
        .string({
        required_error: "documentId is required"
    })
        .min(4, "Desc must be at least 4 characters"),
    totalPrice: zod_1["default"]
        .number({
        required_error: "totalPrice is required"
    })
        .min(3, "Type must be at least 3 characters")
});
