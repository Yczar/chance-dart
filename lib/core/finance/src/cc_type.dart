import 'dart:math';

enum CCType { visa, mastercard, americanExpress, discover }

CCType ccType() {
  final rndNumber = Random().nextInt(CCType.values.length);
  var list = List<CCType>.from(CCType.values)..shuffle();
  return list.take(rndNumber).toList().first;
}
