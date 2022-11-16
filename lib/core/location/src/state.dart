import '../../core.dart';

/// Return the state of a generated address.
///
/// Returns:
///   The state of the address generated.
String state() {
  final randomAddress = address();
  if (randomAddress.state == null) {
    return state();
  }
  return randomAddress.state!;
}
