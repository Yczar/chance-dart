import 'dart:convert';
import 'dart:math';

import 'package:chance_dart/core/location/models/address.dart';

import '../constants/addresses.dart';

/// It takes the addresses string, decodes it, parses it into a map,
/// converts the map into a list of
/// addresses, and returns a random address from that list
///
/// Returns:
///   A random address from the list of addresses.
Address address() {
  final decodedAddress = base64Decode(addresses);
  final addressList = (jsonDecode(
    String.fromCharCodes(decodedAddress),
  )['addresses'] as List)
      .map(
        (addressMap) => Address.fromMap(addressMap as Map<String, dynamic>),
      )
      .toList();

  return addressList[Random().nextInt(addressList.length)];
}
