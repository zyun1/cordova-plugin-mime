/// <reference path="../typings/bundle.d.ts" />

"use strict";

import * as exec from "cordova/exec";

export function getMimeType(successCallback: (mimeType: string) => void, errorCallback: (error: string) => void, extension: string) {
    exec(successCallback, errorCallback, "Mime", "getMimeType", [extension]);
}

export function getExtension(successCallback: (extension: string) => void, errorCallback: (error: string) => void, mimeType: string) {
    exec(successCallback, errorCallback, "Mime", "getExtension", [mimeType]);
}
