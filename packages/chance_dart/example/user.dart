import 'package:chance_dart/chance_dart.dart';

part 'user.g.dart';

@ChanceType()
class User {
  User({
    required this.lastName,
    required this.firstName,
    required this.age,
    required this.gender,
    required this.title,
    // required this.birthday,
    required this.walletInCedi,
    required this.walletInDollar,
    required this.walletInNaira,
    // required this.creditCardNumber,
    required this.walletInEuro,
    required this.ssn,
    required this.floatingNumber,
  });

  ///
  static User generatedUser() => generatedModel();
  static List<User> generatedData() => generatedModels();

  @ChanceField(
    alias: ChanceAlias.lastName,
  )
  final String lastName;

  @ChanceField(
    alias: ChanceAlias.lastName,
  )
  final String firstName;

  @ChanceField(alias: ChanceAlias.age, args: {
    'max': 30,
  })
  final int age;

  @ChanceField(
    alias: ChanceAlias.gender,
  )
  final String gender;

  @ChanceField(
    alias: ChanceAlias.personTitle,
  )
  final String title;

  // @ChanceField(
  //   alias: ChanceAlias.birthday,
  // )
  // final String birthday;

  @ChanceField(
    alias: ChanceAlias.cedi,
  )
  final String walletInCedi;

  @ChanceField(
    alias: ChanceAlias.naira,
  )
  final String walletInNaira;

  @ChanceField(
    alias: ChanceAlias.dollar,
  )
  final String walletInDollar;

  @ChanceField(
    alias: ChanceAlias.euro,
    args: {},
  )
  final String walletInEuro;

  @ChanceField(
    alias: ChanceAlias.ssn,
    args: {},
  )
  final String ssn;

  @ChanceField(
    alias: ChanceAlias.floating,
    args: {},
  )
  final double floatingNumber;

  // @ChanceField(
  //   alias: ChanceAlias.cc,
  // )
  // final String creditCardNumber;
  @override
  String toString() {
    return 'User(lastName: $lastName, firstName: $firstName, age: $age, gender: $gender, title: $title, walletInCedi: $walletInCedi, walletInNaira: $walletInNaira, walletInDollar: $walletInDollar)';
  }
}
