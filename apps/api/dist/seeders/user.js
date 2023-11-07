"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (g && (g = 0, op[0] && (_ = 0)), _) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
exports.__esModule = true;
exports.UserSeeder = void 0;
var bcrypt_1 = __importDefault(require("bcrypt"));
var user_1 = require("../model/user");
var customerRole = [
    {
        name: "John Doe",
        email: "john@gmail.com",
        password: "password",
        address: {
            street: "123 Main St",
            city: "New York",
            state: "NY",
            country: "USA",
            zipCode: "10001"
        },
        phone: "1234567890",
        role: "customer"
    },
    {
        name: "Will Smith",
        email: "will@gmail.com",
        password: "password",
        address: {
            street: "123 Main St",
            city: "New York",
            state: "NY",
            country: "USA",
            zipCode: "10001"
        },
        phone: "1234567890",
        role: "customer"
    },
];
var storeRole = [
    {
        name: "Rahmat Hidayatullah",
        email: "rahmat@gmail.com",
        password: "password",
        address: {
            street: "Jln. Raya Bogor",
            city: "Sukabumi",
            state: "Jawa Barat",
            country: "Indonesia",
            zipCode: "43151"
        },
        phone: "08573231980",
        role: "seller"
    },
];
var UserSeeder = function () { return __awaiter(void 0, void 0, void 0, function () {
    var envSalt, salt, _i, customerRole_1, customer, user, _a, storeRole_1, store, user;
    return __generator(this, function (_b) {
        switch (_b.label) {
            case 0:
                envSalt = process.env.SALT_ROUNDS || "10";
                salt = bcrypt_1["default"].genSaltSync(parseInt(envSalt));
                _i = 0, customerRole_1 = customerRole;
                _b.label = 1;
            case 1:
                if (!(_i < customerRole_1.length)) return [3 /*break*/, 4];
                customer = customerRole_1[_i];
                customer.password = bcrypt_1["default"].hashSync(customer.password, salt);
                return [4 /*yield*/, user_1.User.findOneAndUpdate({ email: customer.email }, { $set: customer }, { upsert: true, "new": true })];
            case 2:
                user = _b.sent();
                _b.label = 3;
            case 3:
                _i++;
                return [3 /*break*/, 1];
            case 4:
                _a = 0, storeRole_1 = storeRole;
                _b.label = 5;
            case 5:
                if (!(_a < storeRole_1.length)) return [3 /*break*/, 8];
                store = storeRole_1[_a];
                store.password = bcrypt_1["default"].hashSync(store.password, salt);
                return [4 /*yield*/, user_1.User.findOneAndUpdate({ email: store.email }, { $set: store }, { upsert: true, "new": true })];
            case 6:
                user = _b.sent();
                _b.label = 7;
            case 7:
                _a++;
                return [3 /*break*/, 5];
            case 8:
                console.log("User seed done! ✅");
                return [2 /*return*/];
        }
    });
}); };
exports.UserSeeder = UserSeeder;
