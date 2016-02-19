#import <Cordova/CDVPlugin.h>

@interface CDVMime : CDVPlugin

- (void) getMimeType:(CDVInvokedUrlCommand*)command;

- (void) getExtension:(CDVInvokedUrlCommand*)command;

@end
