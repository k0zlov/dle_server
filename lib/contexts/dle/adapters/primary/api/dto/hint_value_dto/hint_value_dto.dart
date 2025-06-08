import 'package:dle_server/contexts/dle/domain/entities/hint/hint.dart';
import 'package:dle_server/contexts/dle/domain/value_objects/hint_value/hint_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hint_value_dto.freezed.dart';

part 'hint_value_dto.g.dart';

@freezed
class HintValueDto with _$HintValueDto {
  const factory HintValueDto({required HintType type, required dynamic data}) =
      _HintValueDto;

  factory HintValueDto.fromEntity(HintValue hint) {
    return HintValueDto.fromJson(hint.toMap());
  }

  factory HintValueDto.fromJson(Map<String, dynamic> json) =>
      _$HintValueDtoFromJson(json);
}
