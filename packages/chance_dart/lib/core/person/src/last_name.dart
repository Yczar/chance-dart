import 'package:chance_dart/core/person/model/user.dart';
import 'package:chance_dart/core/person/src/user.dart';

/// If the user's name is not null, return the user's last name, otherwise
/// return an empty string.
String lastName() => (user<User>()).name?.last ?? '';
