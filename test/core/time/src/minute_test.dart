import 'package:chance_dart/core/time/src/minute.dart';
import 'package:test/test.dart';

void main() {
  test('verify that minute generated should be less than 60', ()  {
    expect(minute(), lessThan(60));
  });
}