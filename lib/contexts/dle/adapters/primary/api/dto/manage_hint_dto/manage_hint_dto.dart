import 'package:dle_server/contexts/dle/domain/entities/hint/hint.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_hint_dto.freezed.dart';

part 'manage_hint_dto.g.dart';

@freezed
class ManageHintDto with _$ManageHintDto {
  const factory ManageHintDto({
    required String id,
    required String dleId,
    required String title,
    required HintType type,
    required int requiredTries,
    required bool isHidden,
    required DateTime updatedAt,
    required DateTime createdAt,
    String? description,
  }) = _ManageHintDto;

  factory ManageHintDto.fromEntity(Hint hint) {
    return ManageHintDto.fromJson(hint.toMap());
  }

  factory ManageHintDto.fromJson(Map<String, dynamic> json) =>
      _$ManageHintDtoFromJson(json);
}
