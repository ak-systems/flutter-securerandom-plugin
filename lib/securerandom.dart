import 'dart:async';

import 'package:flutter/services.dart';

class Securerandom {
  static const MethodChannel _channel =
      const MethodChannel('securerandom');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
