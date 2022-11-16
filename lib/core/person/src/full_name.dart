import '../model/user.dart';
import 'user.dart';

String fullName() {
  final newUser = (user<User>());
  return '${newUser.name?.last} ${newUser.name?.first}';
}
