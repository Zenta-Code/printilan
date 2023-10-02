"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
exports.__esModule = true;
exports.DocumentTypes = void 0;
var zod_1 = __importDefault(require("zod"));
exports.DocumentTypes = zod_1["default"].object({
    name: zod_1["default"]
        .string({
        required_error: "Name is required"
    })
        .min(4, "Name must be at least 4 characters"),
    type: zod_1["default"]
        .string({
        required_error: "Type is required"
    })
        .min(4, "Type must be at least 10 characters"),
    count: zod_1["default"].number({
        required_error: "Count is required"
    }),
    size: zod_1["default"]
        .string({
        required_error: "Size is required"
    })
        .min(1, "Size must be at least 1 characters"),
    color: zod_1["default"].boolean({
        required_error: "Color is required"
    }),
    price: zod_1["default"]
        .number({
        required_error: "Prize is required"
    })
        .min(3, "Type must be at least 3 characters"),
    copies: zod_1["default"].number({
        required_error: "Copies is required"
    })
});
