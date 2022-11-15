import 'package:chance_dart/chance_dart.dart';

/// Returns a random integer between 0 and 999.
///
/// Returns:
///   A random integer between 0 and 999.
int millisecond() {
  return integer(max: 999);
}
