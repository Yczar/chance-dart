import '../model/user.dart';
import 'user.dart';

String firstName() => (user<User>()).name?.first ?? '';
