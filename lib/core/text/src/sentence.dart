import 'dart:math';

import 'package:chance_dart/core/text/constants/sentences.dart';

String sentence() => sentences.toList()[Random().nextInt(sentences.length)];
