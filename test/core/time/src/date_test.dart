import 'package:chance_dart/core/time/time.dart';
import 'package:test/test.dart';

void main() {
  test(
    'verify that year returned is the current date',
    //18-11-2022 is the date as at when this test was done
    () => expect(
      date(),
      '18-11-2022',
    ),
  );
}
