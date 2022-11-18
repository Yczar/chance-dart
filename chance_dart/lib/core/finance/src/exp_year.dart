import 'package:chance_dart/chance_dart.dart';

/// Generate a random integer between the current year and the current year
/// plus 10.
///
/// Returns:
///   A random integer between the current year and 10 years from now.
String expYear() {
  final now = DateTime.now().year;
  return '${floating(max: now + 10, min: now).ceil()}';
}
