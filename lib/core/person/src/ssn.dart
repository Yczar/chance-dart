import 'dart:math';

/// Generate a random 9 digit number, convert it to a string, and return it.
///
/// Returns:
///   A string
String ssn() {
  final ssnNumber = (100000000 + Random().nextDouble() * 900000000).floor();
  return ssnNumber.toString();
}
