import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/dle/domain/entities/hint/hint.dart';

part 'hint_value.mapper.dart';

@MappableClass()
class HintValue with HintValueMappable {
  const HintValue({required this.type, required this.data});

  final HintType type;
  final dynamic data;
}
