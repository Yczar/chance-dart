import 'package:chance_dart/chance_dart.dart';

class Milliseconds {
  int millisecond() {
    return integer(max: 999);
  }
}