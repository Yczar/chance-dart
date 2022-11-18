import '../model/user.dart';
import 'user.dart';

/// "Return the first name of the current user, or an empty string if the user
/// is not logged in or the
/// first name is not set."
///
/// The function is a bit more complicated than it needs to be, but it's a good
///  example of how to use
/// the `user()` function
String firstName() => (user<User>()).name?.first ?? '';
