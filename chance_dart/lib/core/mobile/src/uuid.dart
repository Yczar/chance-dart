import 'dart:math';

/// Generates a UUID.
///
/// Returns:
///   A string of 36 characters.
String generateUUID() {
  final microSecond = DateTime.now().microsecond;

  /// Generating a random UUID.
  final uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
      .split('')
      .map(
        (value) => value
            .replaceAll(
              'x',
              _replacer('x', microSecond + Random().nextInt(10)),
            )
            .replaceAll(
              'y',
              _replacer('y', microSecond),
            ),
      )
      .join();
  return uuid;
}

/// `(microSecond + Random().nextInt(99999999) * 16) % 16 | 0`
///
/// The above function is a bitwise operation that returns a random number
///  between 0 and 15
///
/// Args:
///   c (String): The character to be replaced.
///   microSecond (int): The current time in microseconds.
///
/// Returns:
///   A random hexadecimal number.
String _replacer(String c, int microSecond) {
  num sec = microSecond;
  final random = (microSecond + Random().nextInt(99999999) * 16) % 16 | 0;
  sec = (sec / 16);
  return (c == 'x' ? random : (random & 0x3 | 0x8)).toString()[0];
}
