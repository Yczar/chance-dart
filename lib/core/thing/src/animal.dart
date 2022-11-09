import 'dart:math';

import 'package:chance_dart/core/thing/constants/animals.dart';

String animal() {
  return animals[Random().nextInt(animals.length)];
}
