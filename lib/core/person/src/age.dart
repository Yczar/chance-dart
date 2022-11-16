import 'package:chance_dart/chance_dart.dart';

/// `age` returns a random integer between 0 and 123
///
/// Args:
///   max (int): The maximum value of the integer.
///
/// Returns:
///   A random integer between 0 and 123
int age({int? max}) {
  return integer(max: max ?? 123);
}
