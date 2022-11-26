import 'package:chance_dart/chance_dart.dart';
import 'package:chance_dart/core/text/constants/words.dart';
import 'package:test/test.dart';

void main() {
  test(
    'verify that word returned is from a list of words',
    () => expect(
      word(),
      isIn(words),
    ),
  );
}
