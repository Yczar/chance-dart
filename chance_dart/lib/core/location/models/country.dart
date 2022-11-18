// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Country extends Equatable {
  const Country({
    this.name,
    this.dialCode,
    this.code,
  });
  final String? name;
  final String? dialCode;
  final String? code;

  /// `copyWith` is a function that returns a new instance of the class with
  /// the same properties as the
  /// original instance, except for the properties
  /// that are explicitly overridden
  ///
  /// Args:
  ///   name (String): The name of the country.
  ///   dialCode (String): The country's dial code.
  ///   code (String): The country code.
  ///
  /// Returns:
  ///   A new Country object with the same values as the original
  /// Country object, except for the values
  /// that are passed in as arguments.
  Country copyWith({
    String? name,
    String? dialCode,
    String? code,
  }) {
    return Country(
      name: name ?? this.name,
      dialCode: dialCode ?? this.dialCode,
      code: code ?? this.code,
    );
  }

  /// It converts the object into a map.
  ///
  /// Returns:
  ///   A map of the country's name, dial code, and code.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'dial_code': dialCode,
      'code': code,
    };
  }

  /// It creates a Country object from a map.
  ///
  /// Args:
  ///   map (Map<String, dynamic>): The map that contains the data to be
  /// converted to a Country object.
  ///
  /// Returns:
  ///   A Country object
  factory Country.fromMap(Map<String, dynamic> map) {
    return Country(
      name: map['name'] != null ? map['name'] as String : null,
      dialCode: map['dial_code'] != null ? map['dial_code'] as String : null,
      code: map['code'] != null ? map['code'] as String : null,
    );
  }

  /// It converts the object to a map.
  String toJson() => json.encode(toMap());

  /// It converts a JSON string into a Country object.
  ///
  /// Args:
  ///   source (String): The JSON string to be converted to a Map.
  factory Country.fromJson(String source) =>
      Country.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name, dialCode, code];
}
