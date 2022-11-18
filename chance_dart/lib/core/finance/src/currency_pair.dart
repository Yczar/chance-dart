import 'package:chance_dart/chance_dart.dart';

import '../models/currency.dart';

/// Return a list of two currencies, where the second currency is not the same
/// as the first currency.
///
/// Returns:
///   A list of two currencies.
List<Currency> currencyPair() {
  /// creating a varible using the `currency` function from
  /// the `currency.dart` file.
  final currency1 = currency();

  /// Calling the `currency` function from the `currency.dart` file,
  /// but passing in a parameter to
  /// remove the first currency from the list of currencies.
  final currency2 = currency(currencyKeyToRemove: currency1.code);
  return [currency1, currency2];
}
