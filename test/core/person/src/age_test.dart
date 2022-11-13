import 'package:chance_dart/core/person/src/age.dart';
import 'package:test/test.dart';

void main() {
  test('verify that age returned is less than max given', () {
    int max = 142;
    expect (age(max:max), lessThan(max)  );
  });

  test("verify that age is less than 123 when max isn't given", (){
    expect(age(), lessThan(123));
  });
}