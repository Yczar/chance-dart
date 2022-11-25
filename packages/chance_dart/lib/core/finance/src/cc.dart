import 'dart:math';

import 'package:chance_dart/chance_dart.dart';

/// It takes in a credit card type and a length, and returns a valid credit
/// card number
///
/// Args:
///   ccType (CCType): The type of credit card you want to generate.
///   visaLength (int): The length of the card number.
///
/// Returns:
///   A string of numbers.
String cc({
  CCType? ccType,
  int? visaLength,
}) {
  // ccType = CCType.mastercard;
  final visaTypeCheck = visaLength != null && ccType != CCType.visa;
  final visaLengthCheck =
      visaLength != null && (visaLength != 13 || visaLength != 16);

  /// Checking if the ccType is visa and visaLength is not null.
  assert(visaTypeCheck, '');

  /// Checking if the visaLength is not null and if it is not 13 or 16.
  assert(visaLengthCheck);
  // if (visaTypeCheck) {
  //   throw ChanceException(
  //     message: 'visalength can only be assigned to visa cards',
  //   );
  // }
  // if (!visaLengthCheck) {
  //   throw ChanceException(
  //     message: 'Card length not valid',
  //   );
  // }

  int pos = 0;
  List<int> str = List<int>.filled(16, 0);
  num finalDigit;
  num sum = 0;
  int tracker = 0;
  num lengthOffset = 0;
  int length = 0;
  if (ccType == CCType.visa) {
    str[0] = 4;
    pos = 1;
    length = visaLength!;
  } else if (ccType == CCType.mastercard) {
    str[0] = 5;
    tracker = (Random().nextDouble() * 5).floor() % 5;
    str[1] = 1 + tracker;
    pos = 2;
    length = 16;
  } else if (ccType == CCType.americanExpress) {
    str[0] = 3;
    tracker = (Random().nextDouble() * 4).floor() % 4;
    str[1] = 4 + tracker;
    pos = 2;
    length = 15;
  } else if (ccType == CCType.discover) {
    str[0] = 6;
    str[1] = 0;
    str[2] = 1;
    str[3] = 1;
    pos = 4;
    length = 16;
  } else {}
  while (pos < length - 1) {
    str[pos++] = (Random().nextDouble() * 10).floor() % 10;
  }
  lengthOffset = (length + 1) % 2;
  for (pos = 0; pos < length - 1; pos++) {
    if ((pos + lengthOffset) % 2 != 0) {
      tracker = str[pos] * 2;
      if (tracker > 9) {
        tracker -= 9;
      }
      sum += tracker;
    } else {
      sum += str[pos];
    }
  }
  finalDigit = (10 - (sum % 10)) % 10;
  str[length - 1] = finalDigit.toInt();

  // Output the CC value.
  tracker = int.parse(str.join('').substring(0, length));
  return tracker.toString();
}
