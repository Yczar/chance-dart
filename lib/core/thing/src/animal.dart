import 'dart:math';

import 'package:chance_dart/core/thing/constants/animals.dart';

/// Return a random animal from the animals list.
///
/// Returns:
///   A random animal from the animals array.
String animal() {
  return animals[Random().nextInt(animals.length)];
}
