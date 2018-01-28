import Flutter
import UIKit
    
public class SwiftFlutterKeepscreenonPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugins.fuyumi.com/screen", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterKeepscreenonPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if ("activateKeepScreenOn" == call.method) {
      UIApplication.shared.isIdleTimerDisabled = true
      result(nil)
    } else if ("deactivateKeepScreenOn" == call.method) {
      UIApplication.shared.isIdleTimerDisabled = false
      result(nil)
    } else {
      result(FlutterMethodNotImplemented)
    }
  }
}
