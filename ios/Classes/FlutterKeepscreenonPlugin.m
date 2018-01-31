#import "FlutterKeepscreenonPlugin.h"

@implementation FlutterKeepscreenonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"plugins.fuyumi.com/screen"
            binaryMessenger:[registrar messenger]];
  FlutterKeepscreenonPlugin* instance = [[FlutterKeepscreenonPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"activateKeepScreenOn" isEqualToString:call.method]) {
    [[UIApplication sharedApplication] setIdleTimerDisabled: YES];
    result(nil);
  } else if ([@"deactivateKeepScreenOn" isEqualToString:call.method]) {
    [[UIApplication sharedApplication] setIdleTimerDisabled: NO];
    result(nil);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
