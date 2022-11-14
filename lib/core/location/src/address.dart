import 'dart:convert';
import 'dart:math';

import 'package:chance_dart/core/location/models/address.dart';

import '../constants/addresses.dart';

/// It takes the addresses string, decodes it, parses it into a map, converts the map into a list of
/// addresses, and returns a random address from that list
///
/// Returns:
///   A random address from the list of addresses.
Address address() {
  final decodedAddress = base64Decode(addresses);
  final addressMap = jsonDecode(
    String.fromCharCodes(decodedAddress),
  );
  (addressMap as Map).forEach((key, value) {
    addressMap[key] = Address.fromMap(value);
  });
  return addressMap.entries
      .map((entry) => entry.value)
      .toList()[Random().nextInt(addressMap.entries.length)];
}
