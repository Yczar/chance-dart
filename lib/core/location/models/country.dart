// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Country extends Equatable {
  final String? name;
  final String? dialCode;
  final String? code;
  const Country({
    this.name,
    this.dialCode,
    this.code,
  });

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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'dial_code': dialCode,
      'code': code,
    };
  }

  factory Country.fromMap(Map<String, dynamic> map) {
    return Country(
      name: map['name'] != null ? map['name'] as String : null,
      dialCode: map['dial_code'] != null ? map['dial_code'] as String : null,
      code: map['code'] != null ? map['code'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Country.fromJson(String source) =>
      Country.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name, dialCode, code];
}
