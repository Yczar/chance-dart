import '../../core.dart';

/// Return the city of the address of the user.
///
/// Returns:
///   The city of the address of the person.
String city() {
  final randomAddress = address();
  if (randomAddress.city == null) {
    return city();
  }
  return randomAddress.city!;
}
