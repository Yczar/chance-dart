import 'dart:math';

import 'package:chance_dart/chance_dart.dart';
import 'package:test/test.dart';

void main() {
  group('test | Paragraphs', () {
    // final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test(
        'verify only one paragraph is generated whenever the function is being '
        'called without the number of sentences', () {
      final generatedParagraph = paragraph();
      // print(generatedParagraph.split('.').length);
      // print(generatedParagraph);
      expect(generatedParagraph.split('.').length - 1, 1);
    });
    test('verify paragraph equals the amount of sentences passed in', () {
      final sentences = Random().nextInt(50);
      final generatedParagraph = paragraph(sentences: sentences - 1);
      // print(generatedParagraph);
      expect(
        generatedParagraph.split('.').length,
        sentences,
      );
    });
  });
}
