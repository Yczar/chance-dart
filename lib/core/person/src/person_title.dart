import 'package:chance_dart/core/person/model/user.dart';
import 'package:chance_dart/core/person/src/user.dart';

String personTitle() {
  return user<User>().name?.title ?? '';
}
