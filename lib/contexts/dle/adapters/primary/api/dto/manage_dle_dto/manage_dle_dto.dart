import 'package:dle_server/contexts/dle/adapters/primary/api/dto/dle_asset_dto/dle_asset_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/dle_editor_dto/dle_editor_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_character_dto/manage_character_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_character_hint_dto/manage_character_hint_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_hint_dto/manage_hint_dto.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_dle_dto.freezed.dart';

part 'manage_dle_dto.g.dart';

@freezed
class ManageDleDto with _$ManageDleDto {
  const factory ManageDleDto({
    required String id,
    required String title,
    required String type,
    required bool isPrivate,
    required DateTime updatedAt,
    required DateTime createdAt,
    required List<DleEditorDto> editors,
    required List<DleAssetDto> assets,
    required List<ManageCharacterDto> characters,
    required List<ManageHintDto> hints,
    required List<ManageCharacterHintDto> characterHints,
    String? description,
  }) = _ManageDleDto;

  factory ManageDleDto.fromEntity(Dle dle) {
    return ManageDleDto.fromJson(dle.toMap());
  }

  factory ManageDleDto.fromJson(Map<String, dynamic> json) =>
      _$ManageDleDtoFromJson(json);
}
