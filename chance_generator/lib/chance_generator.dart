import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/type_wrapper_generator.dart';

Builder getBuilder(BuilderOptions options) =>
    SharedPartBuilder([TypeWrapperGenerator()], 'chance_generator');
