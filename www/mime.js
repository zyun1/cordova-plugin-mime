/// <reference path="../typings/bundle.d.ts" />
"use strict";
var exec = require("cordova/exec");
function getMimeType(successCallback, errorCallback, extension) {
    exec(successCallback, errorCallback, "Mime", "getMimeType", [extension]);
}
exports.getMimeType = getMimeType;
function getExtension(successCallback, errorCallback, mimeType) {
    exec(successCallback, errorCallback, "Mime", "getExtension", [mimeType]);
}
exports.getExtension = getExtension;
