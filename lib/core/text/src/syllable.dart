import 'dart:convert';
import 'dart:math';

import 'package:chance_dart/core/text/constants/syllables.dart';

String syllable(String count) {
  final decodedAddress = base64Decode(syllables);
  final addressMap = jsonDecode(
    String.fromCharCodes(decodedAddress),
  );
  final selectedSyllables = (addressMap as Map)[count] as List;
  return selectedSyllables[Random().nextInt(selectedSyllables.length)];
}
