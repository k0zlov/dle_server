import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'selectable_value.mapper.dart';

@MappableClass()
class SelectableValue extends Entity with SelectableValueMappable {
  SelectableValue({
    super.id,
    required this.parameterId,
    required this.value,
    required this.title,
    required this.updatedAt,
    required this.createdAt,
  });

  SelectableValue.create({
    required this.parameterId,
    required this.value,
    this.title = '',
  }) : updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String parameterId;
  final String value;
  final String title;

  final DateTime updatedAt;
  final DateTime createdAt;

  SelectableValue edit({String? title, String? value}) {
    return copyWith(value: value, title: title, updatedAt: DateTime.now());
  }
}
