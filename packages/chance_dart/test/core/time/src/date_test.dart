import 'package:chance_dart/core/time/time.dart';
import 'package:test/test.dart';

void main() {
  final rndDate = date();
  final parsedDate = DateTime.tryParse(rndDate);

  test(
    'verify that parsed date is not equals to null',
    () => expect(
      parsedDate,
      isNot(
        equals(null),
      ),
    ),
  );
}
