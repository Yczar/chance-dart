import 'package:chance_dart/chance_dart.dart';
import 'package:chance_dart/core/text/constants/sentences.dart';
import 'package:test/test.dart';

void main() {
  test(
    'verify that sentence returned is from a list of sentences',
    () => expect(
      sentence(),
      isIn(sentences),
    ),
  );
}
