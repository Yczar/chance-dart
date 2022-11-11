import 'package:chance_dart/chance_dart.dart';
/// default max age is 123 but can be set in the parameter
int age({int? max}) {
  return integer(max: max ?? 123);
}
