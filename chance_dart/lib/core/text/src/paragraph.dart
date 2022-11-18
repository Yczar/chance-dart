import '../../core.dart';

/// It generates a paragraph of sentences.
///
/// Args:
///   sentences (int): The number of sentences to generate.
///   lineBreak (bool): if true, the paragraph will be separated by a line
/// break. Defaults to true
///
/// Returns:
///   A string
String paragraph({
  int? sentences,
  bool lineBreak = true,
}) {
  if (sentences != null) {
    assert(sentences <= 50, 'cannot generate more than 50 sentences');
  }
  if (!lineBreak) {
    return sentences == null
        ? sentence()
        : List.generate(sentences, (index) => sentence()).join();
  } else {
    return sentences == null
        ? sentence()
        : List.generate(sentences, (index) => ' ${sentence()}\n').join();
  }
}
