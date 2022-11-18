import 'dart:math';

/// Generate a random number between 0 and 1,000,000,000
/// (or a max value if provided).
///
/// Args:
///   max (int): The maximum number that can be returned.
///
/// Returns:
///   A random number between 0 and 1000000000
int natural({
  int? max,
}) {
  int randomNumber = Random().nextInt(1000000000);
  if (max != null) {
    randomNumber = Random().nextInt(max);

    return randomNumber;
  }

  return randomNumber;
}
