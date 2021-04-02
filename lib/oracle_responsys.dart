
import 'dart:async';

import 'package:flutter/services.dart';

class OracleResponsys {
  static const MethodChannel _channel =
      const MethodChannel('oracle_responsys');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
