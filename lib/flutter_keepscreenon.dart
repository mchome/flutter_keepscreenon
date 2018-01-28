import 'dart:async';

import 'package:flutter/services.dart';

class FlutterKeepscreenon {
  static const MethodChannel _channel =
      const MethodChannel('plugins.fuyumi.com/screen');

  static Future<String> get activateKeepScreenOn =>
      _channel.invokeMethod('activateKeepScreenOn');
  
  static Future<String> get deactivateKeepScreenOn =>
      _channel.invokeMethod('deactivateKeepScreenOn');
}
