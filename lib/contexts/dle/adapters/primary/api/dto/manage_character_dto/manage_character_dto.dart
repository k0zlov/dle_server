import 'package:dle_server/contexts/dle/domain/entities/character/character.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_character_dto.freezed.dart';

part 'manage_character_dto.g.dart';

@freezed
class ManageCharacterDto with _$ManageCharacterDto {
  const factory ManageCharacterDto({
    required String id,
    required String dleId,
    required String name,
    required List<String> aliases,
    required bool isHidden,
    required DateTime updatedAt,
    required DateTime createdAt,
    String? imageId,
  }) = _ManageCharacterDto;

  factory ManageCharacterDto.fromEntity(Character char) {
    return ManageCharacterDto.fromJson(char.toMap());
  }

  factory ManageCharacterDto.fromJson(Map<String, dynamic> json) =>
      _$ManageCharacterDtoFromJson(json);
}
