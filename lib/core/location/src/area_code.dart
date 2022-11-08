import 'package:chance_dart/chance_dart.dart';

String areaCode() {
  return country().code ?? '';
}
