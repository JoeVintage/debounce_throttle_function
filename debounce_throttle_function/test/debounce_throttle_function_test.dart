import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:debounce_throttle_function/debounce_throttle_function.dart';

void main() {
  const MethodChannel channel = MethodChannel('debounce_throttle_function');

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
    expect(await DebounceThrottleFunction.platformVersion, '42');
  });
}
