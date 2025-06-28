import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_parameter_dto.freezed.dart';

part 'manage_parameter_dto.g.dart';

@freezed
class ManageParameterDto with _$ManageParameterDto {
  const factory ManageParameterDto({
    required String id,
    required String basicDleId,
    required String title,
    required String description,
    required ParameterType type,
    required CompareMode compareMode,
    required bool isReverseCompared,
    required bool allowsMultipleValues,
    required bool isSelectable,
    required bool isHidden,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _ManageParameterDto;

  factory ManageParameterDto.fromEntity(Parameter parameter) {
    return ManageParameterDto.fromJson(parameter.toMap());
  }

  factory ManageParameterDto.fromJson(Map<String, dynamic> json) =>
      _$ManageParameterDtoFromJson(json);
}
