import '../../core.dart';

/// It returns a random number between the min and max values, with a fixed
/// number of decimal places
///
/// Args:
///   max (int): The maximum value of the number.
///   min (int): The minimum value of the number.
///   fixed (int): The number of decimal places to return.
///
/// Returns:
///   A string with a random number between 0 and
/// ```max```
String cedi({
  int? max,
  int? min,
  int? fixed,
}) {
  num value = floating(
    fixed: fixed,
    max: max,
    min: min,
  );
  return '₵$value';
}
