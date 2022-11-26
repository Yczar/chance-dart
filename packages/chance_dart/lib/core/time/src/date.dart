/// Return a string containing the current day, month, and year, separated by
/// dashes.
///
/// Returns:
///   A string with the current date.
String date() {
  final now = DateTime.now();
  return now.toIso8601String();
}
