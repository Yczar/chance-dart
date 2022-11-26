import 'package:chance_dart/chance_dart.dart';

/// It returns the state of a random address.
///
/// Returns:
///   The state of the address.
String locale() {
  final randomAddress = address();
  if (randomAddress.state == null) {
    return locale();
  }
  return randomAddress.state!;
}
