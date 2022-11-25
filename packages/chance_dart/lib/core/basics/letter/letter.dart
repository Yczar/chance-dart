import 'dart:math';

import '../src/character.dart';

const String _lowerCaseChars = 'abcdefghijklmnopqrstuvwxyz';
const String _upperCaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const String _chars = '$_lowerCaseChars$_upperCaseChars';

///  a function that returns a random letter.
String letter({
  /// Default includes both upper and lower case. It's possible to specify one
  /// or the other.
  Casing? casing,
}) {
  if (casing == Casing.lower) {
    return _getRandomString(_lowerCaseChars);
  } else if (casing == Casing.upper) {
    return _getRandomString(_upperCaseChars);
  }
  return _getRandomString();
}

/// It generates a random string of length 1, using the characters in the
/// string passed in as the first
/// argument, or the default characters if no argument is passed in
///
/// Args:
///   chars (String): The characters to use for the random string.
/// If not provided, the default is all
/// alphanumeric characters.
String _getRandomString([String? chars]) => String.fromCharCodes(
      Iterable.generate(
        1,
        (_) =>
            chars?.codeUnitAt(
              Random().nextInt(chars.length),
            ) ??
            _chars.codeUnitAt(
              Random().nextInt(_chars.length),
            ),
      ),
    );
