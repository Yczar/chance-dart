import 'package:chance_dart/chance_dart.dart';

String dice() => integer(max: 6).abs().floor().toString();
