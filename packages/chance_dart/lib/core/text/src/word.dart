import 'dart:math';

import 'package:chance_dart/core/text/constants/words.dart';

/// "Return a random word from the list of words."
///
/// The function is named word() and it returns a String. The function body is
/// a single expression,
/// which is the return value
String word() => words.toList()[Random().nextInt(words.length)];
