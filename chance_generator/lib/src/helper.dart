import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:chance_dart/chance_dart.dart';
import 'package:source_gen/source_gen.dart';

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
  ChanceFieldInfo(this.alias, this.defaultValue);

  final ChanceAlias? alias;
  final DartObject? defaultValue;
}

ChanceFieldInfo? getChanceFieldAnnotation(Element element) {
  final obj = _chanceFieldChecker.firstAnnotationOf(element);
  if (obj == null) return null;
  final aliasString = obj.getField('alias')?.getField('_name')?.toStringValue();
  print(aliasString);
  return ChanceFieldInfo(
    ChanceAlias.values.firstWhere(
      (e) => e.toString() == 'ChanceAlias.$aliasString',
    ),
    obj.getField('defaultValue'),
  );
}

bool isLibraryNNBD(Element element) {
  final dartVersion = element.library!.languageVersion.effective;
  // Libraries with the dart version >= 2.12 are nnbd
  if (dartVersion.major >= 2 && dartVersion.minor >= 12) {
    return true;
  } else {
    return false;
  }
}
