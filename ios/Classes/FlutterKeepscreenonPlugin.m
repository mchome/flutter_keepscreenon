#import "FlutterKeepscreenonPlugin.h"
#import <flutter_keepscreenon/flutter_keepscreenon-Swift.h>

@implementation FlutterKeepscreenonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterKeepscreenonPlugin registerWithRegistrar:registrar];
}
@end
