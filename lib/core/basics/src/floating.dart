import 'dart:math';

double floating({
  int? fixed,
  num? min,
  num? max,
}) {
  double randomNumber = Random().nextDouble();
  if (min != null || max != null) {
    randomNumber =
        (Random().nextDouble() * ((max ?? 0) - (min ?? 0)) + (min ?? 0)).abs();
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
