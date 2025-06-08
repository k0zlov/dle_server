import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';

part 'parameter_value.mapper.dart';

@MappableClass()
class ParameterValue with ParameterValueMappable {
  const ParameterValue({required this.type, required this.data});

  final ParameterType type;
  final dynamic data;
}
