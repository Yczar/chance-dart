import 'package:chance_dart/chance_dart.dart';

/// Returns a random integer between 0 and 60.
///
/// Returns:
///   A random integer between 0 and 60.
int minute() {
  return integer(max: 60);
}
