import 'package:dle_server/contexts/dle/domain/entities/character_parameter/character_parameter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_character_parameter_dto.freezed.dart';

part 'manage_character_parameter_dto.g.dart';

@freezed
class ManageCharacterParameterDto with _$ManageCharacterParameterDto {
  const factory ManageCharacterParameterDto({
    required String id,
    required String characterId,
    required String parameterId,
    required DateTime updatedAt,
    required DateTime createdAt,
    required int index,
    String? selectableId,
    String? value,
  }) = _ManageCharacterParameterDto;

  factory ManageCharacterParameterDto.fromEntity(
    CharacterParameter characterParameter,
  ) {
    return ManageCharacterParameterDto.fromJson(characterParameter.toMap());
  }

  factory ManageCharacterParameterDto.fromJson(Map<String, dynamic> json) =>
      _$ManageCharacterParameterDtoFromJson(json);
}
