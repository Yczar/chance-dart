import '../../../chance_dart.dart';

class ChanceField {
  const ChanceField({
    required this.alias,
    this.args = const {},
    this.defaultValue,
  });
  final ChanceAlias alias;
  final Map<String, dynamic> args;
  final dynamic defaultValue;
}
