import 'dart:math';

/// card enum called [CCType] with 4 values: visa, mastercard, americanExpress,
///  discover.
enum CCType { visa, mastercard, americanExpress, discover }

/// It returns a random value from the [CCType] enum.
///
/// Returns:
///   A random number between 0 and the length of the [CCType] enum.
CCType ccType() {
  /// Generating a random number between 0 and the length of the CCType enum.
  final rndNumber = Random().nextInt(CCType.values.length);

  /// Creating a list from the [CCType] enum and shuffling it.
  var list = List<CCType>.from(CCType.values)..shuffle();
  print(rndNumber);
  return list.take(rndNumber == 0 ? 1 : rndNumber).toList().first;
}
