import '../model/user.dart';
import 'user.dart';

/// If a raandom user's name is not null, return the user's last name followed
/// by a space followed by the
/// user's first name.
///
/// Returns:
///   The full name of the user.
String fullName() {
  final newUser = (user<User>());
  return '${newUser.name?.last} ${newUser.name?.first}';
}
