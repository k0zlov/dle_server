import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dle_editor_dto.freezed.dart';

part 'dle_editor_dto.g.dart';

@freezed
class DleEditorDto with _$DleEditorDto {
  const factory DleEditorDto({
    required String id,
    required String dleId,
    required String userId,
    required String role,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _DleEditorDto;

  factory DleEditorDto.fromEntity(Dle dle) {
    return DleEditorDto.fromJson(dle.toMap());
  }

  factory DleEditorDto.fromJson(Map<String, dynamic> json) =>
      _$DleEditorDtoFromJson(json);
}
