import 'dart:math';

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
