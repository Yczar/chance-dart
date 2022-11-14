import '../../core.dart';

/// Return the longitude of a randomly generated address.
///
/// Returns:
///   The longitude of the address generared.
double longitude() {
  return address().coordinates.longitude;
}
