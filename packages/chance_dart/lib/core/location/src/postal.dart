import 'dart:convert';
import 'dart:math';

import '../constants/postals.dart';

/// It takes a base64 encoded JSON string, decodes it, converts it to a map,
/// gets the keys of the map,
/// converts the keys to a list, and returns a random key from the list
///
/// Returns:
///   A random postal code from the list of postal codes.
String postal() {
  final decodedAddress = base64Decode(postals);
  final postalsMap = jsonDecode(
    String.fromCharCodes(decodedAddress),
  ) as Map<String, dynamic>;
  final pstals = postalsMap.keys.toList();
  return pstals[Random().nextInt(pstals.length)];
}
