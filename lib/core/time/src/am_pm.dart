import 'dart:math';

/// Return a random element from a list containing the am and pm value.
///
/// Returns:
///   A random String from the list.
String amPm() {
  final List<String> amPmList = ['am', 'pm'];
  return amPmList[Random().nextInt(amPmList.length)];
}
