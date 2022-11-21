import 'dart:convert';

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:chance_dart/chance_dart.dart';
import 'package:source_gen/source_gen.dart';

import 'builder/utils/type_utils/type_helper.dart';

final _chanceFieldChecker = const TypeChecker.fromRuntime(ChanceField);
void check(
  bool condition,
  Exception error,
) {
  if (!condition) {
    throw error;
  }
}

class ChanceFieldInfo {
  ChanceFieldInfo(
    this.alias,
    this.defaultValue,
    this.args,
  );

  final ChanceAlias? alias;
  final Map<String, dynamic> args;
  final DartObject? defaultValue;
}

ChanceFieldInfo? getChanceFieldAnnotation(Element element) {
  final obj = _chanceFieldChecker.firstAnnotationOf(element);
  if (obj == null) return null;
  final aliasString = obj.getField('alias')?.getField('_name')?.toStringValue();
  final args = jsonDecode(
    constantToString(obj.getField('args')).replaceAll(
      "'",
      '"',
    ),
  ) as Map<String, dynamic>;

  return ChanceFieldInfo(
    ChanceAlias.values.firstWhere(
      (e) => e.toString() == 'ChanceAlias.$aliasString',
    ),
    obj.getField('defaultValue'),
    args,
  );
}
