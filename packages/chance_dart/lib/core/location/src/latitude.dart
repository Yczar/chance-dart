import 'package:chance_dart/chance_dart.dart';

/// Return the latitude of the address of the current user.
///
/// Returns:
///   The latitude of the address of the restaurant.
double latitude() {
  final randomAddress = address();
  if (randomAddress.coordinates?.latitude == null) {
    return latitude();
  }
  return randomAddress.coordinates!.latitude!;
}
