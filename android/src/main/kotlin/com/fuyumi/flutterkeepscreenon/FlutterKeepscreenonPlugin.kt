package com.fuyumi.flutterkeepscreenon

import android.app.Activity
import android.view.WindowManager
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.PluginRegistry.Registrar

class FlutterKeepscreenonPlugin private constructor(private val activity: Activity): MethodCallHandler {
    companion object {
        @JvmStatic
        fun registerWith(registrar: Registrar): Unit {
            val channel = MethodChannel(registrar.messenger(), "plugins.fuyumi.com/screen")
            channel.setMethodCallHandler(FlutterKeepscreenonPlugin(registrar.activity()))
        }
    }

    override fun onMethodCall(call: MethodCall, result: Result): Unit {
        when (call.method) {
            "activateKeepScreenOn" -> {
                activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
                result.success(null)
            }
            "deactivateKeepScreenOn" -> {
                activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
                result.success(null)
            }
            else -> result.notImplemented()
        }
  }
}
