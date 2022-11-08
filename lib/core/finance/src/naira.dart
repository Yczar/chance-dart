import '../../core.dart';

String naira({
  int? max,
  int? min,
  int? fixed,
}) {
  num value = floating(
    fixed: fixed,
    max: max,
    min: min,
  );
  return '₦$value';
}
