/// Call platform code to set if keep the screen on.

import 'dart:async';

import 'package:flutter/services.dart';

class FlutterKeepscreenon {
  static const MethodChannel _channel =
      const MethodChannel('plugins.fuyumi.com/screen');

  /// Keep the screen on. (deprecated)
  ///
  /// Use `keepScreenOn(true)` instead.
  @deprecated
  static Future<void> get activateKeepScreenOn =>
      _channel.invokeMethod('activateKeepScreenOn');

  /// Disable keep the screen on. (deprecated)
  ///
  /// Use `keepScreenOn(false)` instead.
  @deprecated
  static Future<void> get deactivateKeepScreenOn =>
      _channel.invokeMethod('deactivateKeepScreenOn');

  /// Keep the screen on.
  /// If true, keep the screen on.
  /// Othwise reverse to system status.
  static Future<void> keepScreenOn(bool on) =>
      _channel.invokeMethod('keepScreenOn', {'on': on});
}
