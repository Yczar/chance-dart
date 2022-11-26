import 'dart:convert';

import 'package:chance_dart/core/person/model/location.dart';
import 'package:chance_dart/core/person/model/name.dart';
import 'package:equatable/equatable.dart';

import 'picture.dart';

class User extends Equatable {
  const User({
    this.gender,
    this.name,
    this.location,
    this.username,
    this.password,
    this.salt,
    this.md5,
    this.sha1,
    this.sha256,
    this.registered,
    this.dob,
    this.phone,
    this.cell,
    this.pps,
    this.picture,
  });
  final String? gender;
  final Name? name;
  final Location? location;
  final String? username;
  final String? password;
  final String? salt;
  final String? md5;
  final String? sha1;
  final String? sha256;
  final num? registered;
  final num? dob;
  final String? phone;
  final String? cell;
  final String? pps;
  final Picture? picture;

  /// It creates a new User object with the same values as the current User
  /// object, but with the values
  /// of the parameters replacing the values of the current User object.
  ///
  /// Args:
  ///   gender (String): The gender of the user.
  ///   name (Name): The name of the user.
  ///   location (Location): Location? location,
  ///   username (String): The username of the user.
  ///   password (String): password ?? this.password,
  ///   salt (String): A random string of characters used as an additional
  /// input to a one-way function
  /// that hashes a password.
  ///   md5 (String): The md5 hash of the user's email address.
  ///   sha1 (String): String?
  ///   sha256 (String): sha256 ?? this.sha256,
  ///   registered (num): The date the user registered.
  ///   dob (num): date of birth
  ///   phone (String): The user's phone number.
  ///   cell (String): The user's cell phone number.
  ///   pps (String): Personal Public Service Number
  ///   picture (Picture): picture ?? this.picture,
  ///
  /// Returns:
  ///   A new User object with the updated values.
  User copyWith({
    String? gender,
    Name? name,
    Location? location,
    String? username,
    String? password,
    String? salt,
    String? md5,
    String? sha1,
    String? sha256,
    num? registered,
    num? dob,
    String? phone,
    String? cell,
    String? pps,
    Picture? picture,
  }) {
    return User(
      gender: gender ?? this.gender,
      name: name ?? this.name,
      location: location ?? this.location,
      username: username ?? this.username,
      password: password ?? this.password,
      salt: salt ?? this.salt,
      md5: md5 ?? this.md5,
      sha1: sha1 ?? this.sha1,
      sha256: sha256 ?? this.sha256,
      registered: registered ?? this.registered,
      dob: dob ?? this.dob,
      phone: phone ?? this.phone,
      cell: cell ?? this.cell,
      pps: pps ?? this.pps,
      picture: picture ?? this.picture,
    );
  }

  /// It converts the object to a map.
  ///
  /// Returns:
  ///   A map of the user's details.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gender': gender,
      'name': name?.toMap(),
      'location': location?.toMap(),
      'username': username,
      'password': password,
      'salt': salt,
      'md5': md5,
      'sha1': sha1,
      'sha256': sha256,
      'registered': registered,
      'dob': dob,
      'phone': phone,
      'cell': cell,
      'PPS': pps,
      'picture': picture?.toMap(),
    };
  }

  /// It creates a User object from a map.
  ///
  /// Args:
  ///   map (Map<String, dynamic>): The map that contains the data to be
  /// converted to a User object.
  ///
  /// Returns:
  ///   A User object
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      gender: map['gender'] != null ? map['gender'] as String : null,
      name: map['name'] != null
          ? Name.fromMap(map['name'] as Map<String, dynamic>)
          : null,
      location: map['location'] != null
          ? Location.fromMap(map['location'] as Map<String, dynamic>)
          : null,
      username: map['username'] != null ? map['username'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      salt: map['salt'] != null ? map['salt'] as String : null,
      md5: map['md5'] != null ? map['md5'] as String : null,
      sha1: map['sha1'] != null ? map['sha1'] as String : null,
      sha256: map['sha256'] != null ? map['sha256'] as String : null,
      registered: map['registered'] != null ? map['registered'] as num : null,
      dob: map['dob'] != null ? map['dob'] as num : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      cell: map['cell'] != null ? map['cell'] as String : null,
      pps: map['PPS'] != null ? map['PPS'] as String : null,
      picture: map['picture'] != null
          ? Picture.fromMap(map['picture'] as Map<String, dynamic>)
          : null,
    );
  }

  /// It converts the object to a map.
  String toJson() => json.encode(toMap());

  /// It converts a JSON string into a User object.
  ///
  /// Args:
  ///   source (String): The JSON string to be converted into a User object.
  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      gender,
      name,
      location,
      username,
      password,
      salt,
      md5,
      sha1,
      sha256,
      registered,
      dob,
      phone,
      cell,
      pps,
      picture,
    ];
  }
}
