import 'package:chance_dart/chance_dart.dart' as chance;
import 'chance_model.dart';
import 'user.dart';

void main() {
  /// Usage
  /// ```chance.[random value to generate]```
  ///
  try {
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
    print(chance.birthday());
    print(chance.cc(
      ccType: chance.CCType.mastercard,
      // visaLength: 20,
    ));
  } catch (e, s) {
    if (e is chance.ChanceException) {
      print(e.message);
    }
  }
  // Generate random boolean
  // print(chance.ccType());
  // print(UserWrapper().generatedModel());
  // print(ChanceModelWrapper().generatedModels());

  /// for more random values checkout the docs https://docs.page/Yczar/chance-dart
}
