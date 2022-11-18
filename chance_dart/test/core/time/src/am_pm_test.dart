import 'package:chance_dart/core/time/src/am_pm.dart';
import 'package:test/test.dart';

void main() {
  test('verify, if the returned String is either am or pm', () {
    final amPmHolder = ['am','pm'];
    expect(amPm(), isIn(amPmHolder));
  });
}