import 'dart:math';

const Set _falsyValues = {null, '', 0};

/// Return a random falsy value (false, null, 0, '').
/// [usages]
/// falsy()
/// falsy({ pool: {null, '', 0} })
dynamic falsy({
  /// The default pool can be changed to better meet the needs:
  Set? pool,
}) {
  if (pool != null) {
    return pool.toList()[Random().nextInt(_falsyValues.length)];
  }
  return _falsyValues.toList()[Random().nextInt(_falsyValues.length)];
}
