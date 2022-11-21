import 'package:build/build.dart';
import 'package:chance_generator/src/builder/utils/type_utils/type_wrapper_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder getBuilder(BuilderOptions options) =>
    SharedPartBuilder([TypeWrapperGenerator()], 'chance_generator');
