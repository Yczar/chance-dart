import 'dart:math';

/// This function returns a random integer between 0 and 1,000,000,000. If you pass in a max value, it
/// will return a random integer between 0 and the max value.
/// 
/// Args:
///   max (int): The maximum number that can be generated.
/// 
/// Returns:
///   A random number between 0 and 1000000000
int integer({
  int? max,
}) {
  int randomNumber = Random().nextInt(1000000000);
  if (max != null) {
    randomNumber = Random().nextInt(max);

    return randomNumber;
  }

  return randomNumber;
}
