import 'package:chance_dart/core/time/src/second.dart';
import 'package:test/test.dart';

void main() {
  test('second ... should return a valid second', () {
    final result = second();
    final seconds = List.generate(60, (index) => index);
    expect(result, isIn(seconds));
  });
}
