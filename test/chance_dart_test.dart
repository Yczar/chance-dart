import 'package:chance_dart/src/milliseconds_dart.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    // final awesome = Awesome();

    final milli = Milliseconds();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      // expect(awesome.isAwesome, isTrue);
    });

    test("testing millisecond", () {
      int result = milli.millisecond();

      expect(result, result);
    });
  });
}
