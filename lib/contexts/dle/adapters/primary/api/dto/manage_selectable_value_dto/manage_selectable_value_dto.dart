import 'package:dle_server/contexts/dle/domain/entities/selectable_value/selectable_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_selectable_value_dto.freezed.dart';

part 'manage_selectable_value_dto.g.dart';

@freezed
class ManageSelectableValueDto with _$ManageSelectableValueDto {
  const factory ManageSelectableValueDto({
    required String id,
    required String parameterId,
    required String value,
    required String title,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _ManageSelectableValueDto;

  factory ManageSelectableValueDto.fromEntity(SelectableValue value) {
    return ManageSelectableValueDto.fromJson(value.toMap());
  }

  factory ManageSelectableValueDto.fromJson(Map<String, dynamic> json) =>
      _$ManageSelectableValueDtoFromJson(json);
}
