// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Picture extends Equatable {
  final String? large;
  final String? medium;
  final String? thumbnail;
  const Picture({
    this.large,
    this.medium,
    this.thumbnail,
  });

  /// If the caller passes in a value for a parameter, use that value, otherwise
  ///  use the value of the
  /// corresponding field.
  ///
  /// Args:
  ///   large (String): The URL of the large picture.
  ///   medium (String): The URL of the medium-sized version of the picture.
  ///   thumbnail (String): The URL of the thumbnail image.
  ///
  /// Returns:
  ///   A new instance of the Picture class with the values of the original
  ///  instance, but with the
  /// values of the parameters if they are not null.
  Picture copyWith({
    String? large,
    String? medium,
    String? thumbnail,
  }) {
    return Picture(
      large: large ?? this.large,
      medium: medium ?? this.medium,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }

  /// It converts the object into a map.
  ///
  /// Returns:
  ///   A map of the data in the class.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'large': large,
      'medium': medium,
      'thumbnail': thumbnail,
    };
  }

  /// It creates a new instance of the Picture class from a map.
  ///
  /// Args:
  ///   map (Map<String, dynamic>): The map of data that we're going to use to
  /// create the Picture
  /// object.
  factory Picture.fromMap(Map<String, dynamic> map) {
    return Picture(
      large: map['large'] != null ? map['large'] as String : null,
      medium: map['medium'] != null ? map['medium'] as String : null,
      thumbnail: map['thumbnail'] != null ? map['thumbnail'] as String : null,
    );
  }

  /// It converts the object to a map.
  String toJson() => json.encode(toMap());

  /// It converts a JSON string into a Map object.
  ///
  /// Args:
  ///   source (String): The JSON string to be converted into a Picture object.
  factory Picture.fromJson(String source) =>
      Picture.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [large, medium, thumbnail];
}
