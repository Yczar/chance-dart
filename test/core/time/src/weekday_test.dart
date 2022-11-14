import 'package:chance_dart/core/time/src/weekday.dart';
import 'package:test/test.dart';

void main() {
  test('verify that day returned is really a day', () {
    final days = [
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
    ];
    expect(weekday(), isIn(days));
  });
}
