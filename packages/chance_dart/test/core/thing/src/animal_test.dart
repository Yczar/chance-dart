import 'package:chance_dart/core/thing/constants/animals.dart';
import 'package:chance_dart/core/thing/src/animal.dart';
import 'package:test/test.dart';

void main() {
  test(
    'verify that animal returned is random from animal list',
    () => expect(
      animal(),
      isIn(animals),
    ),
  );
}
