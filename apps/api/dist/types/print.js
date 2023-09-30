"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
exports.__esModule = true;
exports.PrintTypes = void 0;
var zod_1 = __importDefault(require("zod"));
exports.PrintTypes = zod_1["default"].object({
    brand: zod_1["default"]
        .string({
        required_error: "Brand is required"
    })
        .min(4, "Brand must be at least 4 characters"),
    model: zod_1["default"]
        .string({
        required_error: "Model is required"
    })
        .min(3, "Model must be at least 5 characters"),
    type: zod_1["default"]
        .string({
        required_error: "Type is required"
    })
        .min(4, "Type must be at least 10 characters"),
    status: zod_1["default"]
        .boolean({
        required_error: "Status is required"
    })
});
