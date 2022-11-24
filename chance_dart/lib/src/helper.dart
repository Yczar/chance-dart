import 'package:chance_dart/chance_dart.dart';

/// It takes in a [ChanceAlias] and a [Map] of arguments and returns a dynamic value
///
/// Args:
///   alias (ChanceAlias): The alias of the function to call.
///   args (Map<String, dynamic>): The arguments passed to the function. Defaults to const {}
///   extraValue (dynamic): This is the value that will be returned if the alias is not found.
///
/// Returns:
///   A function that takes a [ChanceAlias] and returns a dynamic value.

dynamic aliasToFunction(
  ChanceAlias alias, [
  Map<String, dynamic> args = const {},
  dynamic extraValue,
]) {
  final fixed = args['fixed'];

  ///
  final max = args['max'];

  ///
  final min = args['min'];

  ///
  final casing = args['casing'];

  ///
  final alpha = args['alpha'];

  ///
  final length = args['length'];

  ///
  final pool = args['pool'];

  ///
  final symbols = args['symbols'];

  ///
  final template = args['template'];

  ///
  final ccType = args['cc_type'] ?? args['ccType'];

  ///
  final count = args['count'];

  ///
  final currencyKeyToRemove =
      args['currencyKeyToRemove'] ?? args['currency_key_to_remove'];

  ///
  final future = args['future'];

  ///
  final lineBreak = args['lineBreak'] ?? args['line_break'];

  ///
  final sentences = args['sentences'];

  switch (alias) {
    case ChanceAlias.falsy:
      return falsy();
    case ChanceAlias.boolean:
      return boolean();
    case ChanceAlias.character:
      return character(
        alpha: alpha,
      );
    case ChanceAlias.floating:
      return floating(
        fixed: fixed,
        max: max,
        min: min,
      );
    case ChanceAlias.integer:
      return integer(
        max: max,
      );
    case ChanceAlias.letter:
      return letter(
        casing: casing,
      );
    case ChanceAlias.natural:
      return natural(
        max: max,
      );
    case ChanceAlias.prime:
      return prime(
        max: max,
      );
    case ChanceAlias.string:
      return string(
        alpha: alpha,
        casing: casing,
        length: length,
        max: max,
        pool: pool,
        symbols: symbols,
      );
    case ChanceAlias.template:
      return template(
        template,
      );
    case ChanceAlias.ccType:
      return ccType();
    case ChanceAlias.cc:
      return cc(
        ccType: ccType,
      );
    case ChanceAlias.cedi:
      return cedi(
        fixed: fixed,
        max: max,
        min: min,
      );
    case ChanceAlias.currenyPair:
      return currencyPair();
    case ChanceAlias.currency:
      return currency(
        currencyKeyToRemove: currencyKeyToRemove,
      );
    case ChanceAlias.dollar:
      return dollar(
        fixed: fixed,
        max: max,
        min: min,
      );
    case ChanceAlias.euro:
      return euro(
        fixed: fixed,
        max: max,
        min: min,
      );
    case ChanceAlias.expMonth:
      return expMonth(
        future: future,
      );
    case ChanceAlias.expYear:
      return expYear();
    case ChanceAlias.exp:
      return exp();
    case ChanceAlias.naira:
      return naira(
        fixed: fixed,
        max: max,
        min: min,
      );
    case ChanceAlias.address:
      return address();
    case ChanceAlias.altitude:
      return '';
    case ChanceAlias.areaCode:
      return areaCode();
    case ChanceAlias.city:
      return city();
    case ChanceAlias.coordinates:
      return coordinates();
    case ChanceAlias.country:
      return country();
    case ChanceAlias.depth:
      return 0;
    case ChanceAlias.geohash:
      return geohash();
    case ChanceAlias.latitude:
      return latitude();
    case ChanceAlias.locale:
      return locale();
    case ChanceAlias.longitude:
      return longitude();
    case ChanceAlias.phone:
      return phone();
    case ChanceAlias.postal:
      return postal();
    case ChanceAlias.postCode:
      return postCode();
    case ChanceAlias.province:
      return '';
    case ChanceAlias.state:
      return state();
    case ChanceAlias.street:
      return street();
    case ChanceAlias.age:
      return age(
        max: max,
      );
    case ChanceAlias.birthday:
      return birthday();
    case ChanceAlias.firstName:
      return firstName();
    case ChanceAlias.fullName:
      return fullName();
    case ChanceAlias.gender:
      return gender();
    case ChanceAlias.lastName:
      return lastName();
    case ChanceAlias.personTitle:
      return personTitle();
    case ChanceAlias.ssn:
      return ssn();
    case ChanceAlias.zip:
      return 0;
    case ChanceAlias.paragraph:
      return paragraph(
        lineBreak: lineBreak,
        sentences: sentences,
      );
    case ChanceAlias.sentence:
      return sentence();
    case ChanceAlias.syllable:
      return syllable(count);
    case ChanceAlias.animal:
      return animal();
    case ChanceAlias.amPm:
      return amPm();
    case ChanceAlias.date:
      return date();
    case ChanceAlias.hour:
      return hour();
    case ChanceAlias.millisecond:
      return millisecond();
    case ChanceAlias.minute:
      return minute();
    case ChanceAlias.month:
      return month();
    case ChanceAlias.second:
      return second();
    case ChanceAlias.timestamp:
      return timeStamp();
    case ChanceAlias.timezone:
      return '';
    case ChanceAlias.weekday:
      return weekday();
    case ChanceAlias.year:
      return year(
        max: max,
        min: min,
      );
  }
}
