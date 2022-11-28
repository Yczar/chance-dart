import 'dart:math';

/// This function returns a random integer between min value and max value.
/// If no argument if passed, it will generate random integers between
/// 0 and 1,000,000,000.
///
/// Args:
///   min (int): The minimum number that can be generated.
///   max (int): The maximum number that can be generated.
///
/// Returns:
///   A random number between min and max
int integer({
  int? min,
  int? max,
}) {
  int randomNumber = Random().nextInt(1000000000);
  if (min != null || max != null) {
    randomNumber =
        Random().nextInt(((max ?? 0) - (min ?? 0)).abs() + 1) + (min ?? 0);

    return randomNumber;
  }

  return randomNumber;
}
