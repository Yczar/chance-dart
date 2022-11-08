import 'package:chance_dart/chance_dart.dart';

String template(String temp) {
  String char = temp;
  char = char.replaceAll(
    'a',
    character(casing: Casing.lower),
  );
  char = char.replaceAll(
    'A',
    character(casing: Casing.upper),
  );
  char = char.replaceAll(
    '#',
    character(
      numeric: true,
    ),
  );
  return char;
}
