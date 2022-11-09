import 'dart:math';

import 'package:chance_dart/core/text/constants/words.dart';

String word() => words.toList()[Random().nextInt(words.length)];
