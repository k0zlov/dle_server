import 'package:dle_server/contexts/dle/domain/entities/selectable_value/selectable_value.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';

extension SelectableValueMapperExtension on SelectableValuesCompanion {
  static SelectableValuesCompanion fromEntity(SelectableValue selectableValue) {
    return SelectableValuesCompanion(
      id: Value(selectableValue.id),
      parameterId: Value(selectableValue.parameterId),
      value: Value(selectableValue.value),
      title: Value(selectableValue.title),
      updatedAt: Value(selectableValue.updatedAt),
      createdAt: Value(selectableValue.createdAt),
    );
  }
}
