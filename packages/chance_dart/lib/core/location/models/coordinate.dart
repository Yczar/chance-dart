import 'dart:convert';

import 'package:equatable/equatable.dart';

class Coordinate extends Equatable {
  const Coordinate({
    required this.latitude,
    required this.longitude,
  });
  final double? latitude;
  final double? longitude;

  /// "If the caller passes in a value for latitude, use that value, otherwise
  /// use the value of
  /// this.latitude."
  ///
  /// The same logic applies to the longitude parameter
  ///
  /// Args:
  ///   latitude (double): The latitude of the coordinate.
  ///   longitude (double): The longitude of the coordinate.
  ///
  /// Returns:
  ///   A new Coordinate object with the same values as the original Coordinate
  ///  object, except for the
  /// values that are passed in as parameters.
  Coordinate copyWith({
    double? latitude,
    double? longitude,
  }) {
    return Coordinate(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  /// It converts the latitude and longitude into a map.
  ///
  /// Returns:
  ///   A map of the latitude and longitude.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  /// `Coordinate.fromMap` is a factory constructor that takes a
  /// `Map<String, dynamic>` and returns a
  /// `Coordinate` object
  ///
  /// Args:
  ///   map (Map<String, dynamic>): The map that contains the data to be
  /// converted to a Coordinate object.
  ///
  /// Returns:
  ///   A Coordinate object.
  factory Coordinate.fromMap(Map<String, dynamic> map) {
    return Coordinate(
      latitude: map['latitude'] as double?,
      longitude: map['longitude'] as double?,
    );
  }

  /// It converts the object to a map.
  String toJson() => json.encode(toMap());

  /// It converts a JSON string into a Coordinate object.
  ///
  /// Args:
  ///   source (String): The JSON string to be converted to a Coordinate object.
  factory Coordinate.fromJson(String source) =>
      Coordinate.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [latitude, longitude];
}
