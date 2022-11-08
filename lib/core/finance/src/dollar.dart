import 'package:chance_dart/chance_dart.dart';

String dollar({
  int? max,
  int? min,
  int? fixed,
}) {
  num value = floating(
    fixed: fixed,
    max: max,
    min: min,
  );
  return '\$$value';
}
