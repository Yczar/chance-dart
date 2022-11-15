import 'package:chance_dart/chance_dart.dart';

/// Return a random integer between 0 and 60.
///
/// Returns:
///   A random integer between 0 and 60.
int second() {
  return integer(max: 60);
}
