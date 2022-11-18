import 'package:chance_dart/chance_dart.dart';

/// Return a string with the current month and year separated by a dash.
/// 
/// Returns:
///   A string with the month and year of the expiration date.
String exp() {
  return '${expMonth()}-${expYear()}';
}
