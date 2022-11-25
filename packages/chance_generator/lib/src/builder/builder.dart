import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:chance_dart/chance_dart.dart';

class WrapperField {
  // final int index;
  final String name;
  final ChanceAlias alias;

  final Map<String, dynamic> args;
  final DartType type;
  final DartObject? defaultValue;

  WrapperField(
    this.name,
    this.type,
    this.defaultValue,
    this.alias,
    this.args,
  );
}

abstract class Builder {
  final InterfaceElement interfaceElement;
  final List<WrapperField> getters;
  final List<WrapperField> setters;

  Builder(
    this.interfaceElement,
    this.getters, [
    this.setters = const <WrapperField>[],
  ]);
  // List buildList();
  // T buildModel();
}
