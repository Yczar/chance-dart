import 'dart:math';

int prime({int? max}) {
  late List<int> primeNumbers;
  primeNumbers = _getPrimeNumbers(1000000000);
  if (max != null) {
    primeNumbers = _getPrimeNumbers(max);
    return primeNumbers[Random().nextInt(primeNumbers.length)];
  }
  return primeNumbers[Random().nextInt(primeNumbers.length)];
}

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
