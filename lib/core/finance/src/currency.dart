import 'dart:convert';
import 'dart:math';

import 'package:chance_dart/core/finance/constants/constants.dart';
import 'package:chance_dart/core/finance/models/currency.dart';

Currency currency({
  String? currencyKeyToRemove,
}) {
  final decodedCurrency = base64Decode(currencyList);
  final currencyMap = jsonDecode(
    String.fromCharCodes(decodedCurrency),
  );
  if (currencyKeyToRemove != null) {
    (currencyMap as Map).remove(currencyKeyToRemove);
  }
  (currencyMap as Map).forEach((key, value) {
    currencyMap[key] = Currency.fromMap(value);
  });
  return currencyMap.entries
      .map((entry) => entry.value)
      .toList()[Random().nextInt(currencyMap.entries.length)];
}
