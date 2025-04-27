import 'package:dle_server/contexts/dle/domain/entities/character_hint/character_hint.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';

extension CharacterHintMapperExtension on CharacterHintsCompanion {
  static CharacterHintsCompanion fromEntity(CharacterHint h) {
    return CharacterHintsCompanion(
      id: Value(h.id),
      hintId: Value(h.hintId),
      characterId: Value(h.characterId),
      value: Value(h.value),
      updatedAt: Value(h.updatedAt),
      createdAt: Value(h.createdAt),
    );
  }
}
