import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:chance_dart/chance_dart.dart';
import 'package:chance_generator/src/builder/builder.dart';
import 'package:chance_generator/src/builder/src/class_builder.dart';
import 'package:chance_generator/src/helper.dart';
import 'package:source_gen/source_gen.dart';

class TypeWrapperGenerator extends GeneratorForAnnotation<ChanceType> {
  static String generateName(String typeName) {
    var wrapperName = '${typeName}Wrapper'.replaceAll('[^A-Za-z0-9]+', '');
    if (wrapperName.startsWith('_')) {
      wrapperName = wrapperName.substring(1);
    }
    if (wrapperName.startsWith(r'$')) {
      wrapperName = wrapperName.substring(1);
    }
    return wrapperName;
  }

  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    final interface = getInterface(element);
    final library = await buildStep.inputLibrary;
    final gettersAndSetters = getAccessors(interface, library);
    final getters = gettersAndSetters[0];

    var setters = gettersAndSetters[1];
    // final wrapperName = getWrapperName(interface.name, annotation);
    final builder = ClassBuilder(interface, getters, setters);
    return '''
      ${interface.name} generatedModel() {
        ${builder.generateModel()}
      }
      List<${interface.name}> generatedModels() {
        ${builder.generateModels()}
      }
    
  ''';
  }

  String getWrapperName(
    String typeName,
    ConstantReader annotation,
  ) {
    var annAdapterName = annotation.read('wrapperName');
    if (annAdapterName.isNull) {
      return generateName(typeName);
    } else {
      return annAdapterName.stringValue;
    }
  }

  InterfaceElement getInterface(Element element) {
    check(
      element.kind == ElementKind.CLASS,
      ChanceException(
        message: 'Only classes are allowed to be annotated with @ChanceType.',
      ),
    );
    return element as InterfaceElement;
  }

  List<List<WrapperField>> getAccessors(
    InterfaceElement interfaceElement,
    LibraryElement libraryElement,
  ) {
    final accessorNames = getAllAccessorNames(interfaceElement);
    var getters = <WrapperField>[];
    var setters = <WrapperField>[];
    for (var name in accessorNames) {
      var getter = interfaceElement.lookUpGetter(name, libraryElement);
      if (getter != null) {
        var getterAnnotation = getChanceFieldAnnotation(getter.variable) ??
            getChanceFieldAnnotation(getter);
        if (getterAnnotation != null) {
          var field = getter.variable;
          getters.add(WrapperField(
            // getterAnnotation.index,
            field.name,
            field.type,
            getterAnnotation.defaultValue,
            getterAnnotation.alias!,
            getterAnnotation.args,
          ));
        }
      }

      var setter = interfaceElement.lookUpSetter('$name=', libraryElement);
      if (setter != null) {
        var setterAnnotation = getChanceFieldAnnotation(setter.variable) ??
            getChanceFieldAnnotation(setter);
        if (setterAnnotation != null) {
          var field = setter.variable;
          setters.add(
            WrapperField(
              // setterAnnotation.index,
              field.name,
              field.type,
              setterAnnotation.defaultValue,
              setterAnnotation.alias!,
              setterAnnotation.args,
            ),
          );
        }
      }
    }

    return [getters, setters];
  }

  Set<String> getAllAccessorNames(InterfaceElement interfaceElement) {
    var accessorNames = <String>{};
    var supertypes = interfaceElement.allSupertypes.map(
      (interface) => interface.element,
    );
    for (var type in [interfaceElement, ...supertypes]) {
      for (var accessor in type.accessors) {
        if (accessor.isSetter) {
          var name = accessor.name;
          accessorNames.add(
            name.substring(
              0,
              name.length - 1,
            ),
          );
        } else {
          accessorNames.add(accessor.name);
        }
      }
    }
    return accessorNames;
  }
}
