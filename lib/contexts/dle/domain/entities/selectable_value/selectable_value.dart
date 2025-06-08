import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/dle/domain/value_objects/parameter_value/parameter_value.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'selectable_value.mapper.dart';

@MappableClass()
class SelectableValue extends Entity with SelectableValueMappable {
  SelectableValue({
    super.id,
    required this.parameterId,
    required this.value,
    required this.description,
    required this.updatedAt,
    required this.createdAt,
  });

  SelectableValue.create({
    required this.parameterId,
    required this.value,
    this.description = '',
  }) : updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String parameterId;
  final ParameterValue value;
  final String description;

  final DateTime updatedAt;
  final DateTime createdAt;

  SelectableValue edit({String? description, ParameterValue? value}) {
    return copyWith(
      value: value,
      description: description,
      updatedAt: DateTime.now(),
    );
  }
}
