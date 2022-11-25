import 'dart:convert';

import 'package:equatable/equatable.dart';

class Name extends Equatable {
  /// A constructor that takes in the parameters and assigns them to the
  /// variables.
  const Name({
    this.title,
    this.first,
    this.last,
  });

  /// Declaring the variables that will be used in the class.
  final String? title;
  final String? first;
  final String? last;

  /// If any of the parameters are passed in, use them, otherwise use the
  /// current value.
  ///
  /// Args:
  ///   title (String): The title of the person.
  ///   first (String): The first name of the user.
  ///   last (String): last ?? this.last,
  ///
  /// Returns:
  ///   A new instance of the Name class with the updated values.
  Name copyWith({
    String? title,
    String? first,
    String? last,
  }) {
    return Name(
      title: title ?? this.title,
      first: first ?? this.first,
      last: last ?? this.last,
    );
  }

  /// It returns a map of the object's properties
  ///
  /// Returns:
  ///   A map of the data in the class.

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'first': first,
      'last': last,
    };
  }

  /// It creates a new Name object from a map.
  ///
  /// Args:
  ///   map (Map<String, dynamic>): The map that contains the data to be
  /// converted to a Name object.
  ///
  /// Returns:
  ///   A new instance of the Name class.
  factory Name.fromMap(Map<String, dynamic> map) {
    return Name(
      title: map['title'] != null ? map['title'] as String : null,
      first: map['first'] != null ? map['first'] as String : null,
      last: map['last'] != null ? map['last'] as String : null,
    );
  }

  /// It converts the object to a map.
  String toJson() => json.encode(toMap());

  /// `Name.fromMap` is a factory constructor that takes a
  /// `Map<String, dynamic>` and returns a `Name`
  /// object.
  ///
  /// Args:
  ///   source (String): The JSON string to be converted to a Name object.
  factory Name.fromJson(String source) =>
      Name.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [title, first, last];
}
