// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String? street;
  final String? city;
  final String? state;
  final num? zip;
  const Location({
    this.street,
    this.city,
    this.state,
    this.zip,
  });

  /// "If the caller passes in a value for a parameter, use that value,
  /// otherwise use the value of the
  /// corresponding field."
  ///
  /// The copyWith function is a great example of the power of Dart's optional
  /// parameters
  ///
  /// Args:
  ///   street (String): The street address of the location.
  ///   city (String): city ?? this.city
  ///   state (String): state ?? this.state
  ///   zip (num): zip ?? this.zip,
  ///
  /// Returns:
  ///   A new Location object with the same values as the original, except for
  ///  the values that were passed
  /// in.
  Location copyWith({
    String? street,
    String? city,
    String? state,
    num? zip,
  }) {
    return Location(
      street: street ?? this.street,
      city: city ?? this.city,
      state: state ?? this.state,
      zip: zip ?? this.zip,
    );
  }

  /// `toMap()` returns a `Map<String, dynamic>` that contains the `street`,
  /// `city`, `state`, and `zip`
  /// values of the `Address` object
  ///
  /// Returns:
  ///   A map of the address object.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'street': street,
      'city': city,
      'state': state,
      'zip': zip,
    };
  }

  /// It creates a Location object from a map.
  ///
  /// Args:
  ///   map (Map<String, dynamic>): The map that you want to convert to a
  /// Location object.
  ///
  /// Returns:
  ///   A new instance of the Location class.
  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      street: map['street'] != null ? map['street'] as String : null,
      city: map['city'] != null ? map['city'] as String : null,
      state: map['state'] != null ? map['state'] as String : null,
      zip: map['zip'] != null ? map['zip'] as num : null,
    );
  }

  String toJson() => json.encode(toMap());

  /// It converts a JSON string into a Location object.
  ///
  /// Args:
  ///   source (String): The JSON string to be converted to a Location object.
  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [street, city, state, zip];
}
