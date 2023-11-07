"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
exports.__esModule = true;
exports.PriceTypes = void 0;
var zod_1 = __importDefault(require("zod"));
exports.PriceTypes = zod_1["default"].object({
    name: zod_1["default"]
        .string({
        required_error: "Name is required"
    })
        .min(4, "Name must be at least 4 characters"),
    price: zod_1["default"]
        .number({
        required_error: "Status is required"
    })
});
