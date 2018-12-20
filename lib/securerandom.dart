import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/services.dart';

class SecureRandom {
  static const MethodChannel _channel = const MethodChannel('securerandom');

  static Future<Uint8List> generate(int numBytes) async {
    final result = await _channel.invokeMethod('generate', {
      'numBytes': numBytes,
    });
    return result;
  }
}
