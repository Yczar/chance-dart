import '../../core.dart';

/// It returns a random number between the min and max values, with a fixed
/// number of decimal places
///
/// Args:
///   max (int): The maximum value of the number to be generated.
///   min (int): The minimum value the number can be.
///   fixed (int): The number of decimal places to return.
///
/// Returns:
///   A string
String naira({
  int? max,
  int? min,
  int? fixed,
}) {
  num value = floating(
    fixed: fixed,
    max: max,
    min: min,
  );
  return '₦$value';
}
