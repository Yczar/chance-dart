import 'dart:convert';
import 'dart:math';

import 'package:chance_dart/core/location/models/country.dart';

import '../constants/countries.dart';

Country country() {
  final decodedAddress = base64Decode(countries);
  final countryMap = jsonDecode(
    String.fromCharCodes(decodedAddress),
  );
  (countryMap as Map).forEach((key, value) {
    countryMap[key] = Country.fromMap(value);
  });
  return countryMap.entries
      .map((entry) => entry.value)
      .toList()[Random().nextInt(countryMap.entries.length)];
}
