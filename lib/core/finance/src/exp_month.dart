import 'package:chance_dart/chance_dart.dart';

String expMonth({
  bool? future,
}) {
  int value = integer(max: 12);
  if (future != null && future) {
    final month = DateTime.now().month + 1;
    value = floating(min: month >= 12 ? 0 : month, max: 12).ceil();
  }
  return value.toString();
}
