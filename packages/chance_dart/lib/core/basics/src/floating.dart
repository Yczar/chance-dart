import 'dart:math';

/// It returns a random double point number between min and max
///
/// Args:
///   fixed (int): The number of decimal places to return.
///   min (num): The minimum value of the random number.
///   max (num): The maximum value of the random number.
///
/// Returns:
///   A random floating number.
double floating({
  int? fixed,
  num? min,
  num? max,
}) {
  double randomNumber = Random().nextDouble();
  if (min != null || max != null) {
    randomNumber =
        (Random().nextDouble() * ((max ?? 0) - (min ?? 0)).abs() + (min ?? 0))
            .abs();
    if (fixed != null) {
      return double.parse(randomNumber.toStringAsFixed(fixed));
    }
    return randomNumber;
  }
  if (fixed != null) {
    return double.parse(randomNumber.toStringAsFixed(fixed));
  }
  return randomNumber;
}
