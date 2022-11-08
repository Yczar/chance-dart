import 'package:chance_dart/chance_dart.dart';

import '../models/currency.dart';

List<Currency> currencyPair() {
  final currency1 = currency();
  final currency2 = currency(currencyKeyToRemove: currency1.code);
  return [currency1, currency2];
}
