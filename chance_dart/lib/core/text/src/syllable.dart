import 'dart:convert';
import 'dart:math' hide log;

import 'package:chance_dart/core/text/constants/syllables.dart';

/// It takes a string, decodes it from base64, parses it as JSON, and returns a
/// random element from the
/// list of syllables that matches the input string
///
/// Args:
///   count (String): The number of syllables you want in your word.
///
/// Returns:
///   A random syllable from the list of syllables.
String syllable(String count) {
  final decodedAddress = base64Decode(syllables);
  final addressMap = jsonDecode(
    String.fromCharCodes(decodedAddress),
  );
  final selectedSyllables = (addressMap as Map)[count] as List;
  return selectedSyllables[Random().nextInt(selectedSyllables.length)];
}
