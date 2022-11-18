import 'dart:math';

/// Return a random value from a set of two strings i.e
/// the head and tail of a coin.
///
/// Returns:
///   A list of strings.
String coin() {
  Set<String> coinValues = {'Head', 'Tail'};
  return coinValues.toList()[Random().nextInt(coinValues.length)];
}
