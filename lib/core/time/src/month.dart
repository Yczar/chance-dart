import 'package:chance_dart/chance_dart.dart';

/// returns a month of the year
String month() {
  final months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  return months[integer(max: months.length)];
}
