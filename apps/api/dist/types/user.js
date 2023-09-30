"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
exports.__esModule = true;
exports.UserTypes = void 0;
var zod_1 = __importDefault(require("zod"));
exports.UserTypes = zod_1["default"].object({
    name: zod_1["default"]
        .string({
        required_error: "Name is required"
    })
        .min(4, "Name must be at least 4 characters"),
    email: zod_1["default"]
        .string({
        required_error: "Email is required"
    })
        .min(4, "Email must be at least 4 characters"),
    password: zod_1["default"]
        .string({
        required_error: "Password is required"
    })
        .min(8, "Password must be at least 8 characters"),
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
    role: zod_1["default"]["enum"](["maintainer", "seller", "user"], {
        required_error: "Role is required"
    })
});
