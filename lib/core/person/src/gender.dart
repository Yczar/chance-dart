import '../model/user.dart';
import 'user.dart';

///  return a random user's gender, otherwise return an empty string.
String gender() => (user<User>()).gender ?? '';
