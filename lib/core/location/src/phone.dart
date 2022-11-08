import 'dart:math';

import 'package:chance_dart/chance_dart.dart';

String phone([String? temp]) {
  String phoneNumber;
  if (temp != null) {
    phoneNumber = template(temp);
  } else {
    phoneNumber = (Random().nextInt(99999999) + 1000000000).toString();
  }
  return phoneNumber;
}
