import 'dart:mirrors';

import 'package:chance_dart/chance_dart.dart';

void main() {
  testingMic();
  // var awesome = Awesome();
  // print('awesome: ${awesome.isAwesome}');
}

@Chance(chanceKey: ChanceKey.city)
void testingMic() {
  print(reflectClass(Chance).metadata.first.reflectee);
}
