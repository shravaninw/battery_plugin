import 'dart:async';

import 'package:flutter/services.dart';

class PluginCreate {
  static const MethodChannel _channel = MethodChannel('plugin_create');

  static Future<String?> get battery async {
    final String? version = await _channel.invokeMethod('battery');
    return version;
  }
}
