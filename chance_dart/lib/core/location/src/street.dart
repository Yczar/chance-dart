import '../../core.dart';

/// Return a randomly generated address street.
///
/// Returns:
///   The street from the randomly generated address.
String street() {
  final randomAddress = address();
  if (randomAddress.address1 == null) {
    return street();
  }
  return randomAddress.address1!;
}
