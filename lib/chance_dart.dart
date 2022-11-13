library chance_dart;

export 'core/core.dart';

enum ChanceKey {
  boolean,
  character,
  falsy,
  floating,
  integer,
  letter,
  natural,
  prime,
  string,
  template,
  ccType,
  cc,
  currencyPair,
  currency,
  dollar,
  euro,
  expMonth,
  expYear,
  exp,
  naira,
  address,
  altitude,
  areaCode,
  city,
  coordinates,
  country,
  depth,
  geohash,
  latitude,
  locale,
  longitude,
  phone,
  postal,
  postCode,
  province,
  state,
  street,
  zip,
}

class Chance {
  const Chance({
    required this.chanceKey,
  });
  final ChanceKey chanceKey;
}
