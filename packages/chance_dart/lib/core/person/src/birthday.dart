import '../model/user.dart';
import 'user.dart';

/// It takes the user object from the store, parses the date of birth from it,
/// and returns a string with
/// the day, month, and year
///
/// Returns:
///   The date of birth of the user.
String birthday() {
  /// Parsing the date of birth from the user object.
  final parsedDate = DateTime.parse(user<User>().dob.toString());

  /// Using string interpolation to return the day, month, and year of the
  /// user's birthday.
  return '${parsedDate.day}-${parsedDate.month}-${parsedDate.year}';
}
