import 'dart:math';

enum Casing { lower, upper }

const String _lowerCaseChars = 'abcdefghijklmnopqrstuvwxyz';
const String _upperCaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const String _symbols = '!@#\$%^&*()';
const String _numbers = '0123456789';
const String _chars = '$_lowerCaseChars$_upperCaseChars$_numbers$_symbols';

/// Return a random character.
// => 'c'
/// Usage
/// ```character()```
/// ```character({ pool: 'abcde' })```
/// ```chance.character({ alpha: true })```
/// ```chance.character({ numeric: true })```
/// ```chance.character({ casing: 'lower' })```
/// ```chance.character({ symbols: true })```
///
String character({
  bool? alpha,

  /// Optionally specify a pool and the character will be generated with
  /// characters only from that pool.
  /// By default it will return a string with random character from the
  /// following pool.
  /// [_chars]
  String? pool,

  /// Optionally specify numeric for a numeric character.
  bool? numeric,

  /// Default includes both upper and lower case. It's possible to specify
  /// one or the other.
  Casing? casing,

  /// Optionally return only symbols
  bool? symbols,
}) {
  assert(alpha == true && numeric == true);
  assert(casing != null && symbols == true);
  if (alpha == null &&
      pool == null &&
      numeric == null &&
      casing == null &&
      symbols == null) {
    return _getRandomString();
  } else if (alpha == true) {
    return _getRandomString(_upperCaseChars);
  } else if (pool != null) {
    return _getRandomString(pool);
  } else if (casing != null) {
    if (casing == Casing.lower) {
      return _getRandomString(_lowerCaseChars);
    }

    return _getRandomString(_upperCaseChars);
  } else if (symbols != null) {
    return _getRandomString(_symbols);
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
