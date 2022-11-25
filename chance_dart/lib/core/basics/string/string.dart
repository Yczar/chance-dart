import 'dart:math';

import '../src/character.dart';

const String _lowerCaseChars = 'abcdefghijklmnopqrstuvwxyz';
const String _upperCaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const String _symbols = '!@#\$%^&*()';
const String _numbers = '0123456789';
const String _chars = '$_lowerCaseChars$_upperCaseChars$_numbers$_symbols';

/// It generates a random string of characters from a given string of characters
///
/// Args:
///   length (int): The length of the string to be generated. Defaults to 5
///   max (int): The maximum length of the string to be generated.
///   pool (String): The characters to use for the random string.
///   alpha (bool): If true, the string will only contain alphabetic characters.
///   casing (Casing): The casing of the string to be generated.
///   symbols (bool): If true, the string will contain symbols.
///
/// Returns:
///   A string of random characters.
String string({
  int length = 5,
  int? max,
  String? pool,
  bool? alpha,
  Casing? casing,
  bool? symbols,
}) {
  assert(casing != null && symbols == true);
  if (alpha == null && pool == null && casing == null && symbols == null) {
    return _getRandomString(null, length: max ?? 5);
  } else if (alpha == true) {
    return _getRandomString(
      _upperCaseChars,
      length: max ?? 5,
    );
  } else if (pool != null) {
    return _getRandomString(pool, length: max ?? 5);
  } else if (casing != null) {
    if (casing == Casing.lower) {
      return _getRandomString(_lowerCaseChars, length: max ?? 5);
    }

    return _getRandomString(_upperCaseChars, length: max ?? 5);
  } else if (symbols != null) {
    return _getRandomString(_symbols);
  }
  return _getRandomString(null, length: max ?? 5);
}

/// It generates a random string of characters from a given string of characters
///
/// Args:
///   chars (String): The characters to use for the random string.
///   length (int): The length of the string to be generated.
String _getRandomString(String? chars, {int? length}) => String.fromCharCodes(
      Iterable.generate(
        length ?? 1,
        (_) =>
            chars?.codeUnitAt(
              Random().nextInt(chars.length),
            ) ??
            _chars.codeUnitAt(
              Random().nextInt(_chars.length),
            ),
      ),
    );
