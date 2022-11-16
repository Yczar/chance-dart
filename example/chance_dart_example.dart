import 'package:chance_dart/chance_dart.dart' as chance;

void main() {
  /// Usage
  /// ```chance.[random value to generate]```
  ///
  // Generate random address
  print(chance.address().toJson());
  // Generate random age
  print(chance.age());
  // Generate random amPm
  print(chance.amPm());
  // Generate random age
  print(chance.animal());
  // Generate random areaCode
  print(chance.areaCode());
  // Generate random age
  print(chance.birthday());
  // Generate random boolean
  print(chance.boolean());

  /// for more random values checkout the docs https://docs.page/Yczar/chance-dart
}
