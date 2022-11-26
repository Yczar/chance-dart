// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:chance_dart/core/location/models/coordinate.dart';
import 'package:equatable/equatable.dart';

/// a model representation of an address
class Address extends Equatable {
  final String? address1;
  final String? address2;
  final String? city;
  final String? state;
  final String? postalCode;
  final Coordinate? coordinates;

  const Address({
    required this.address1,
    required this.address2,
    required this.city,
    required this.postalCode,
    required this.coordinates,
    required this.state,
  });

  /// Return a new Address object with the same values as this one, except for
  ///  the values that are
  /// explicitly overridden.
  ///
  /// Args:
  ///   address1 (String): The first line of the address.
  ///   address2 (String): address2 ?? this.address2,
  ///   city (String): The city of the address.
  ///   postalCode (String): The postal code of the address.
  ///   coordinates (Coordinate): The coordinates of the address.
  ///   state (String): The state of the address.
  ///
  /// Returns:
  ///   A new instance of the Address class with the updated values.
  Address copyWith({
    String? address1,
    String? address2,
    String? city,
    String? postalCode,
    Coordinate? coordinates,
    String? state,
  }) {
    return Address(
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      city: city ?? this.city,
      postalCode: postalCode ?? this.postalCode,
      coordinates: coordinates ?? this.coordinates,
      state: state ?? this.state,
    );
  }

  /// It converts the object into a map.
  ///
  /// Returns:
  ///   A map of the address object.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address1': address1,
      'address2': address2,
      'city': city,
      'postalCode': postalCode,
      'coordinates': coordinates?.toMap(),
      'state': state,
    };
  }

  /// `Address.fromMap` is a factory constructor that takes a
  /// `Map<String, dynamic>` and returns an
  /// `Address` object
  ///
  /// Args:
  ///   map (Map<String, dynamic>): The map that contains the data to be
  /// converted to an Address object.
  ///
  /// Returns:
  ///   A new instance of the Address class.
  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      address1: map['address1'] as String?,
      address2: map['address2'] as String?,
      city: map['city'] as String?,
      postalCode: map['postalCode'] as String?,
      coordinates:
          Coordinate.fromMap(map['coordinates'] as Map<String, dynamic>),
      state: map['state'] as String?,
    );
  }

  /// It converts the object to a map.
  String toJson() => json.encode(toMap());

  /// It converts a JSON string into a Map object.
  ///
  /// Args:
  ///   source (String): The JSON string to be converted to a Map.
  factory Address.fromJson(String source) =>
      Address.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      address1,
      address2,
      city,
      postalCode,
      coordinates,
      state,
    ];
  }
}
