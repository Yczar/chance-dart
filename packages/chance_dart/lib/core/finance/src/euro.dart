import '../../core.dart';

/// Generate a random euro value
///
/// Args:
///   max (int): The maximum value that can be generated.
///   min (int): The minimum value that can be generated.
///   fixed (int): The number of decimal places to return.
///
/// Returns:
///   A string with a euro sign and a floating number.
String euro({
  int? max,
  int? min,
  int? fixed,
}) {
  num value = floating(
    fixed: fixed,
    max: max,
    min: min,
  );
  return '€$value';
}
