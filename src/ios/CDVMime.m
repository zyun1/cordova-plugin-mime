#import "CDVMime.h"
#import <MobileCoreServices/MobileCoreServices.h>

@implementation CDVMime

- (void) getMimeType:(CDVInvokedUrlCommand*)command
{
	NSString* extension = (NSString*)[command argumentAtIndex:0];

	CFStringRef uti = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, (__bridge CFStringRef)extension, NULL);
	
	NSString* mimeType = (__bridge_transfer NSString*)UTTypeCopyPreferredTagWithClass(uti, kUTTagClassMIMEType);
	
	CFRelease(uti);
	
	CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:mimeType];

	[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void) getExtension:(CDVInvokedUrlCommand*)command
{
	NSString* mimeType = (NSString*)[command argumentAtIndex:0];

	CFStringRef uti = UTTypeCreatePreferredIdentifierForTag(kUTTagClassMIMEType, (__bridge CFStringRef)mimeType, NULL);
	
	NSString* extension = (__bridge_transfer NSString*)UTTypeCopyPreferredTagWithClass(uti, kUTTagClassFilenameExtension);
	
	CFRelease(uti);
	
	CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:extension];

	[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
