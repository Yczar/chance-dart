import 'package:chance_dart/chance_dart.dart';

/// Generate a random integer between 1 and 12, or a random integer between
/// the current month and 12 if
/// future is true.
///
/// Args:
///   future (bool): If true, the expiration month will be in the future.
///
/// Returns:
///   A string
String expMonth({
  bool? future,
}) {
  int value = integer(max: 12);
  if (future != null && future) {
    final month = DateTime.now().month + 1;
    value = floating(min: month >= 12 ? 0 : month, max: 12).ceil();
  }
  return value.toString();
}
