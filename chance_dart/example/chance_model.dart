// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chance_dart/chance_dart.dart';

part 'chance_model.g.dart';

@ChanceType()
class ChanceModel {
  ChanceModel({
    required this.testing,
    required this.geohash,
  });
  @ChanceField(
    alias: ChanceAlias.boolean,
  )
  final bool testing;

  ///
  @ChanceField(
    alias: ChanceAlias.lastName,
    defaultValue: '',
  )
  final String geohash;

  @override
  String toString() => 'ChanceModel(testing: $testing, geohash: $geohash)';
}
