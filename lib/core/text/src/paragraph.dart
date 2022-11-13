import '../../core.dart';

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
