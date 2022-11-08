import 'dart:math';

import 'character.dart';

const String _lowerCaseChars = 'abcdefghijklmnopqrstuvwxyz';
const String _upperCaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const String _chars = '$_lowerCaseChars$_upperCaseChars';
String letter({
  /// Default includes both upper and lower case. It's possible to specify one or the other.
  Casing? casing,
}) {
  if (casing == Casing.lower) {
    return _getRandomString(_lowerCaseChars);
  } else if (casing == Casing.upper) {
    return _getRandomString(_upperCaseChars);
  }
  return _getRandomString();
}

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
