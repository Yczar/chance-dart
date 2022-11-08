import 'dart:math';

import 'character.dart';

const String _lowerCaseChars = 'abcdefghijklmnopqrstuvwxyz';
const String _upperCaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const String _symbols = '!@#\$%^&*()';
const String _numbers = '0123456789';
const String _chars = '$_lowerCaseChars$_upperCaseChars$_numbers$_symbols';

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
