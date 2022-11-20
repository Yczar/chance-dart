import '../../../chance_dart.dart';

class ChanceField {
  const ChanceField({
    required this.alias,
    this.defaultValue,
  });
  final ChanceAlias alias;
  final dynamic defaultValue;
}
