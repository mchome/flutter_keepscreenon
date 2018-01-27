import 'dart:async';

import 'package:flutter/services.dart';

class FlutterKeepscreenon {
  static const MethodChannel _channel =
      const MethodChannel('flutter_keepscreenon');

  static Future<String> get platformVersion =>
      _channel.invokeMethod('getPlatformVersion');
}
