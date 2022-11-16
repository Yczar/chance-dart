import 'package:chance_dart/core/person/model/user.dart';
import 'package:chance_dart/core/person/src/user.dart';

String lastName() => (user<User>()).name?.last ?? '';
