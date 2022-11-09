import '../../core.dart';

String paragraph({
  int? sentences,
  bool lineBreak = true,
}) {
  if (sentences != null) {
    assert(sentences <= 50, 'cannot generate more than 50 sentences');
  }

  return sentences == null
      ? sentence()
      : List.generate(sentences, (index) => sentence()).join();
}
