import 'package:chance_dart/core/person/model/user.dart';
import 'package:chance_dart/core/person/src/user.dart';

/// It returns the title of the user.
/// 
/// Returns:
///   The title of the user.
String personTitle() {
  return user<User>().name?.title ?? '';
}
