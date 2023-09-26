"use strict";
exports.__esModule = true;
exports.sanitize = void 0;
function sanitize(key, data) {
    for (var k in data) {
        if (k.startsWith(key)) {
            delete data[k];
        }
    }
    return data;
}
exports.sanitize = sanitize;
