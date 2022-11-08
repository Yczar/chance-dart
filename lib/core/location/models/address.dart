// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:chance_dart/core/location/models/coordinate.dart';

class Address extends Equatable {
  final String address1;
  final String address2;
  final String city;
  final String state;
  final String postalCode;
  final Coordinate coordinates;
  const Address({
    required this.address1,
    required this.address2,
    required this.city,
    required this.postalCode,
    required this.coordinates,
    required this.state,
  });

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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address1': address1,
      'address2': address2,
      'city': city,
      'postalCode': postalCode,
      'coordinates': coordinates.toMap(),
      'state': state,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      address1: map['address1'] as String,
      address2: map['address2'] as String,
      city: map['city'] as String,
      postalCode: map['postalCode'] as String,
      coordinates:
          Coordinate.fromMap(map['coordinates'] as Map<String, dynamic>),
      state: map['state'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) =>
      Address.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
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
