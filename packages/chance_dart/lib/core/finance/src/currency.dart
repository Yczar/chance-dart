import 'dart:convert';
import 'dart:math';

import 'package:chance_dart/core/finance/constants/constants.dart';
import 'package:chance_dart/core/finance/models/currency.dart';

/// It takes a currency key to remove from the list of currencies, decodes the
///  base64 encoded string,
/// converts it to a map, removes the currency key if it's not null,
/// converts the map to a list of
/// currencies, and returns a random currency from the list
///
/// Args:
///   currencyKeyToRemove (String): This is the key of the currency you want to
/// remove from the list.
///
/// Returns:
///   A random currency from the list of currencies.
Currency currency({
  String? currencyKeyToRemove,
}) {
  /// decoding the base64 encoded string.
  final decodedCurrency = base64Decode(currencyList);
  final currencyMap = jsonDecode(
    String.fromCharCodes(decodedCurrency),
  );
  if (currencyKeyToRemove != null) {
    (currencyMap as Map).remove(currencyKeyToRemove);
  }
  (currencyMap as Map<String, Currency>).forEach((key, value) {
    currencyMap[key] = Currency.fromMap(value as Map<String, dynamic>);
  });
  return currencyMap.entries
      .map((entry) => entry.value)
      .toList()[Random().nextInt(currencyMap.entries.length)];
}
