import 'package:chance_dart/chance_dart.dart';

/// Generate a random year between 1701 and the current year.
///
/// Args:
///   max (int): The maximum value that can be generated.
///   min (int): The minimum value that can be generated. Defaults to 1701
String year({
  int? max,
  int? min = 1701,
}) =>
    floating(
      min: min,
      max: max,
    ).floor().toStringAsFixed(4);
