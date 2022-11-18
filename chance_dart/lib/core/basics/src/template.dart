import 'package:chance_dart/chance_dart.dart';

/// It takes a string and replaces all the 'a' characters with a
/// random lowercase letter, all the 'A'
/// characters with a random uppercase letter, and all the '#'
/// characters with a random number
///
/// Args:
///   temp (String): The template string.
///
/// Returns:
///   A string
String template(String temp) {
  String char = temp;
  char = char.replaceAll(
    'a',
    character(casing: Casing.lower),
  );
  char = char.replaceAll(
    'A',
    character(casing: Casing.upper),
  );
  char = char.replaceAll(
    '#',
    character(
      numeric: true,
    ),
  );
  return char;
}
