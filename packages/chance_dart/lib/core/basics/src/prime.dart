import 'dart:math';

/// Return a random prime number, optionally between 1 and max.
///
/// Args:
///   max (int): The maximum number to generate a prime number from.
///
/// Returns:
///   A random prime number.
int prime({int? max}) {
  late List<int> primeNumbers;
  primeNumbers = _getPrimeNumbers(1000000000);
  if (max != null) {
    primeNumbers = _getPrimeNumbers(max);
    return primeNumbers[Random().nextInt(primeNumbers.length)];
  }
  return primeNumbers[Random().nextInt(primeNumbers.length)];
}

/// "Generate a list of numbers from 0 to max, then filter out all the numbers
/// that aren't prime."
///
/// The first line of the function is a bit of syntactic sugar that allows us to
///  write the function in
/// one line. The second line is the meat of the function
///
/// Args:
///   max (int): The maximum number to check for prime numbers.
///
/// Returns:
///   A list of prime numbers.
List<int> _getPrimeNumbers(int max) =>
    List<int>.generate(max, (index) => index).where((number) {
      if (number <= 1) {
        return false;
      } else if (number == 2) {
        return true;
      } else if (number % 2 == 0) {
        return false;
      }
      final boundary = sqrt(number).floor();
      for (int i = 3; i <= boundary; i += 2) {
        if (number % i == 0) {
          return false;
        }
      }
      return true;
    }).toList();
