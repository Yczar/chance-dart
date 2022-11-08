import 'dart:convert';
import 'dart:math';

import '../constants/postals.dart';

String postal() {
  final decodedAddress = base64Decode(postals);
  final postalsMap = jsonDecode(
    String.fromCharCodes(decodedAddress),
  ) as Map;
  final pstals = postalsMap.keys.toList();
  return pstals[Random().nextInt(pstals.length)];
}
