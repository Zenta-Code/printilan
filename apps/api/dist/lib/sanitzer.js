"use strict";
exports.__esModule = true;
exports.sanitize = void 0;
function sanitize(obj, exceptsNotation) {
    var result = {};
    Object.keys(obj).forEach(function (key) {
        if (!exceptsNotation.includes(key)) {
            result[key] = obj[key];
        }
    });
    return result;
}
exports.sanitize = sanitize;
