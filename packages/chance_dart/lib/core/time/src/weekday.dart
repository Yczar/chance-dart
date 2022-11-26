import 'package:chance_dart/chance_dart.dart';

/// Return a random weekday.
///
/// Returns:
///   A random weekday.
String weekday() {
  final days = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];

  return days[integer(max: days.length)];
}
