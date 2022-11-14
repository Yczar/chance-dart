import 'package:chance_dart/chance_dart.dart';

/// returns a day of the week
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
