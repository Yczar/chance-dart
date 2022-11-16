import '../../core.dart';

/// Return the longitude of a randomly generated address.
///
/// Returns:
///   The longitude of the address generared.
double longitude() {
  final randomAddress = address();
  if (randomAddress.coordinates?.longitude == null) {
    return longitude();
  }
  return randomAddress.coordinates!.longitude!;
}
