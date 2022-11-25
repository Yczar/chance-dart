import 'dart:convert';
import 'dart:math';

import 'package:chance_dart/core/person/constants/users.dart';

import '../model/user.dart';

/// It returns a new instance of a class that implements the [_User] interface
T user<T>() => _User<T>().call();

/// We're decoding the base64 encoded users string, converting it to a list of
///  maps, and then converting
/// it to a list of User objects
///
/// Returns:
///   A random user from the list of users.
User _user() {
  final decodedUsers = base64Decode(users);

  /// Decoding the base64 encoded users string, converting it to a list of maps,
  ///  and then converting it
  /// to a list of User objects.
  final userList = (jsonDecode(
    String.fromCharCodes(decodedUsers),
  )['users'] as List)
      .map(
        (userMap) => User.fromMap(userMap as Map<String, dynamic>),
      )
      .toList();

  /// Returning a random user from the list of users.
  return userList[Random().nextInt(userList.length)];
}

/// _User<T> is a class that returns a User object, a Map object, or a String
/// object, depending on the
/// type of T
class _User<T> {
  /// It's checking to see if the type of T is a String, User, Map, or dynamic.
  ///  If it's not, then it
  /// throws an exception
  ///
  /// Returns:
  ///   The return type is [T].
  T call() {
    /// It's checking to see if the type of T is a String, User, Map,
    /// or dynamic. If it's not, then it
    /// throws an exception.
    if (T != String && T != User && T != Map && T != dynamic) {
      throw Exception(
        '$T is not a valid _User type',
      );
    }

    if (T == String) {
      return _user().toJson() as T;
    } else if (T == User) {
      return _user() as T;
    } else if (T == Map || T == Map<String, dynamic>) {
      return _user().toMap() as T;
    } else {
      return _user() as T;
    }
  }
}
