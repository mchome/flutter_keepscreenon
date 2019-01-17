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
  if ([@"keepScreenOn" isEqualToString:call.method]) {
    NSNumber *on = call.arguments[@"on"];
    [[UIApplication sharedApplication] setIdleTimerDisabled: on.boolValue];
    result(nil);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
