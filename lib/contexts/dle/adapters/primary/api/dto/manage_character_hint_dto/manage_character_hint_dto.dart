import 'package:dle_server/contexts/dle/adapters/primary/api/dto/hint_value_dto/hint_value_dto.dart';
import 'package:dle_server/contexts/dle/domain/entities/character_hint/character_hint.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_character_hint_dto.freezed.dart';

part 'manage_character_hint_dto.g.dart';

@freezed
class ManageCharacterHintDto with _$ManageCharacterHintDto {
  const factory ManageCharacterHintDto({
    required String id,
    required String hintId,
    required String characterId,
    required HintValueDto value,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _ManageCharacterHintDto;

  factory ManageCharacterHintDto.fromEntity(CharacterHint hint) {
    return ManageCharacterHintDto.fromJson(hint.toMap());
  }

  factory ManageCharacterHintDto.fromJson(Map<String, dynamic> json) =>
      _$ManageCharacterHintDtoFromJson(json);
}
