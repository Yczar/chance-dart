import 'package:chance_dart/core/time/src/hour.dart';
import 'package:test/test.dart';

void main() {
  test(
    'verify that hour returned is less than 999(which is the maximum)',
    () => expect(hour(), lessThan(999)),
  );
}
