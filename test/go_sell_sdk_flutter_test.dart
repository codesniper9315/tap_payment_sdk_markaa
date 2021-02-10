import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:tap_payment_markaa/tap_payment_markaa.dart';

void main() {
  const MethodChannel channel = MethodChannel('tap_payment_markaa');

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
    // expect(await GoSellSdkFlutter.platformVersion, '42');
  });
}
