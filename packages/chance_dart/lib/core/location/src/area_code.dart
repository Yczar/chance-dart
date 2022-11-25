import 'package:chance_dart/chance_dart.dart';

/// Return the country code of the current locale, or an empty string
/// if it's not available.
///
/// Returns:
///   The country code of the country that the user is in.
String areaCode() {
  return country().code ?? '';
}
