import 'package:chance_dart/chance_dart.dart';

/// Generate a random dollar amount.
///
/// Args:
///   max (int): The maximum value that can be generated.
///   min (int): The minimum value that can be generated.
///   fixed (int): The number of decimal places to return.
///
/// Returns:
///   A string that starts with a dollar sign and ends with a number.
String dollar({
  int? max,
  int? min,
  int? fixed,
}) {
  num value = floating(
    fixed: fixed,
    max: max,
    min: min,
  );
  return '\$$value';
}
