import 'package:chance_dart/core/location/models/coordinate.dart';

import '../../core.dart';

/// Return the coordinates of the address of the user.
/// 
/// Returns:
///   The coordinates of the address of the restaurant.
Coordinate coordinates() {
  return address().coordinates;
}
