import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oracle_responsys/oracle_responsys.dart';

void main() {
  const MethodChannel channel = MethodChannel('oracle_responsys');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await OracleResponsys.platformVersion, '42');
  });
}
