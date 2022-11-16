import 'dart:math';

import 'package:chance_dart/core/text/constants/sentences.dart';

/// It returns a random sentence from the list of sentences
String sentence() => sentences.toList()[Random().nextInt(sentences.length)];
