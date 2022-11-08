import 'package:dart_geohash/dart_geohash.dart';

import '../../core.dart';

String geohash() {
  final mainAddress = address();
  return GeoHasher().encode(
    mainAddress.coordinates.longitude,
    mainAddress.coordinates.longitude,
  );
}
