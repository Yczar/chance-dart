import 'package:chance_dart/chance_dart.dart';

/// returns a month of the year
/// Return a random month of the year.
/// 
/// Returns:
///   A random month from the months list.
String month() {
  final months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  return months[integer(max: months.length)];
}
