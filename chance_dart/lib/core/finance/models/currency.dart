import 'dart:convert';

import 'package:equatable/equatable.dart';

class Currency extends Equatable {
  final String symbol;
  final String name;
  final String symbolNative;
  final String decimalDigits;
  final String rounding;
  final String code;
  final String namePlurals;
  const Currency({
    required this.symbol,
    required this.name,
    required this.symbolNative,
    required this.decimalDigits,
    required this.rounding,
    required this.code,
    required this.namePlurals,
  });

  Currency copyWith({
    String? symbol,
    String? name,
    String? symbolNative,
    String? decimalDigits,
    String? rounding,
    String? code,
    String? namePlurals,
  }) {
    return Currency(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      symbolNative: symbolNative ?? this.symbolNative,
      decimalDigits: decimalDigits ?? this.decimalDigits,
      rounding: rounding ?? this.rounding,
      code: code ?? this.code,
      namePlurals: namePlurals ?? this.namePlurals,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'symbol': symbol,
      'name': name,
      'symbol_native': symbolNative,
      'decimal_digits': decimalDigits,
      'rounding': rounding,
      'code': code,
      'name_plurals': namePlurals,
    };
  }

  factory Currency.fromMap(Map<String, dynamic> map) {
    return Currency(
      symbol: map['symbol'] as String,
      name: map['name'] as String,
      symbolNative: map['symbol_native'] as String,
      decimalDigits: map['decimal_digits'] as String,
      rounding: map['rounding'] as String,
      code: map['code'] as String,
      namePlurals: map['name_plurals'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Currency.fromJson(String source) =>
      Currency.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      symbol,
      name,
      symbolNative,
      decimalDigits,
      rounding,
      code,
      namePlurals,
    ];
  }
}
