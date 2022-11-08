import 'package:chance_dart/chance_dart.dart';

String expYear() {
  final now = DateTime.now().year;
  return '${floating(max: now + 10, min: now).ceil()}';
}
