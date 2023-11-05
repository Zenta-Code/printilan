"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
exports.__esModule = true;
exports.StoreTypes = void 0;
var zod_1 = __importDefault(require("zod"));
exports.StoreTypes = zod_1["default"].object({
    name: zod_1["default"]
        .string({
        required_error: "Name is required"
    })
        .min(4, "Name must be at least 4 characters"),
    address: zod_1["default"]
        .string({
        required_error: "Address is required"
    })
        .min(4, "Address must be at least 4 characters"),
    phone: zod_1["default"]
        .string({
        required_error: "Phone is required"
    })
        .min(10, "Phone must be at least 10 characters"),
    ownerId: zod_1["default"]
        .string({
        required_error: "Owner Id is required"
    })
        .min(10, "Owner Id must be at least 10 characters")
});
