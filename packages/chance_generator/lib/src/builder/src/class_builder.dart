import 'dart:typed_data';

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:chance_dart/chance_dart.dart';
import 'package:chance_dart/core/location/models/address.dart';
import 'package:chance_dart/core/location/models/coordinate.dart';
import 'package:chance_dart/core/location/models/country.dart';
import 'package:chance_dart/core/person/model/user.dart';
import 'package:chance_generator/src/builder/builder.dart';
import 'package:source_gen/source_gen.dart';

import '../../helper.dart';

class ClassBuilder extends Builder {
  ClassBuilder(
    InterfaceElement interface,
    List<WrapperField> getters,
    List<WrapperField> setters,
  ) : super(interface, getters, setters);

  /// These are default checkers
  final listChecker = const TypeChecker.fromRuntime(List);
  final mapChecker = const TypeChecker.fromRuntime(Map);
  final setChecker = const TypeChecker.fromRuntime(Set);
  final iterableChecker = const TypeChecker.fromRuntime(Iterable);
  final unInt8ListChecker = const TypeChecker.fromRuntime(Uint8List);
  final stringChecker = const TypeChecker.fromRuntime(String);
  final numChecker = const TypeChecker.fromRuntime(num);

  /// These are chance checkers
  final addressChecker = const TypeChecker.fromRuntime(Address);
  final userChecker = const TypeChecker.fromRuntime(User);
  final coordinateChecker = const TypeChecker.fromRuntime(Coordinate);
  final countryChecker = const TypeChecker.fromRuntime(Country);

  ///
  String generateModel() {
    final constr = interfaceElement.constructors.firstWhereOrNull(
      (predicate) => predicate.name.isEmpty,
    );
    check(
      constr != null,
      ChanceException(
        message: 'Provide an unnamed constructor.',
      ),
    );
    // The remaining fields to initialize.
    final fields = setters.toList();

    // Empty classes
    if (constr!.parameters.isEmpty && fields.isEmpty) {
      return 'return ${interfaceElement.name}();';
    }
    final code = StringBuffer();
    code.writeln('''
   
    return ${interfaceElement.name}(
    ''');

    for (var param in constr.parameters) {
      var field = fields.firstWhereOrNull((it) => it.name == param.name);
      // Final fields
      field ??= getters.firstWhereOrNull((it) => it.name == param.name);
      if (field != null) {
        if (param.isNamed) {
          code.write('${param.name}: ');
        }
        code.write(_value(
          param.type,
          field.defaultValue,
          field.alias,
          field.args,
        ));
        code.writeln(',');
        fields.remove(field);
      }
    }

    code.writeln(')');

    // There may still be fields to initialize that were not in the constructor
    // as initializing formals. We do so using cascades.
    for (var field in fields) {
      code.write('..${field.name} = ');
      code.writeln(_value(
        field.type,
        field.defaultValue,
        field.alias,
        field.args,
      ));
    }

    code.writeln(';');

    return code.toString();
  }

  String generateModels() {
    final constructor =
        interfaceElement.constructors.firstWhereOrNull((it) => it.name.isEmpty);
    check(
      constructor != null,
      ChanceException(
        message: 'Provide an unnamed constructor.',
      ),
    );

    // The remaining fields to initialize.
    var fields = setters.toList();

    // Empty classes
    if (constructor!.parameters.isEmpty && fields.isEmpty) {
      return 'return ${interfaceElement.name}();';
    }
    var code = StringBuffer();
    code.writeln('return [');
    for (var i = 0; i < 50; i++) {
      code.writeln('''

    ${interfaceElement.name}(
    ''');

      for (var param in constructor.parameters) {
        var field = fields.firstWhereOrNull((it) => it.name == param.name);
        // Final fields
        field ??= getters.firstWhereOrNull((it) => it.name == param.name);
        if (field != null) {
          if (param.isNamed) {
            code.write('${param.name}: ');
          }
          code.write(_value(
            param.type,
            field.defaultValue,
            field.alias,
            field.args,
          ));
          code.writeln(',');
          fields.remove(field);
        }
      }

      code.writeln('),');
    }

    code.writeln(']');

    // There may still be fields to initialize that were not in the constructor
    // as initializing formals. We do so using cascades.
    for (var field in fields) {
      code.write('..${field.name} = ');
      code.writeln(_value(
        field.type,
        field.defaultValue,
        field.alias,
        field.args,
      ));
    }

    code.writeln(';');

    return code.toString();
  }

  dynamic _value(
    DartType type,
    DartObject? defaultValue,
    ChanceAlias alias,
    Map<String, dynamic> args,
  ) {
    final value = aliasToFunction(
      alias,
      args,
    );
    if (alias == ChanceAlias.age) {
      print('Args is: $args');
    }
    // var value = _cast(type, variable);
    // if (defaultValue?.isNull != false) return value;
    // return '$value as ${value.runtimeType}';
    return _cast(type, value);
  }

  dynamic _cast(DartType type, dynamic variable) {
    if (stringChecker.isAssignableFromType(type)) {
      return "r'$variable'";
    } else if (numChecker.isAssignableFromType(type)) {
      return variable as num;
    } else if (userChecker.isAssignableFromType(type)) {
      return '${User.fromMap((variable as User).toMap())},';
    }
    return '$variable';
  }
}

extension _FirstWhereOrNull<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T) predicate) {
    for (var it in this) {
      if (predicate(it)) {
        return it;
      }
    }
    return null;
  }
}
