import 'package:meta/meta.dart';

@immutable
abstract class TypeWrapper<T> {
  int get typeId;
  List<T> generateList();
  List<T> generateType();
}
