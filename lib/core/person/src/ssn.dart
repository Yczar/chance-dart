import 'dart:math';

String ssn() {
  final ssnNumber = (100000000 + Random().nextDouble() * 900000000).floor();
  return ssnNumber.toString();
}
