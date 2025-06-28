import 'package:dle_server/contexts/dle/domain/entities/character/character.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';

extension CharacterMapperExtension on CharactersCompanion {
  static CharactersCompanion fromEntity(Character c) {
    return CharactersCompanion(
      id: Value(c.id),
      name: Value(c.name),
      dleId: Value(c.dleId),
      isHidden: Value(c.isHidden),
      aliases: Value(c.aliases),
      assetId: Value(c.assetId),
      updatedAt: Value(c.updatedAt),
      createdAt: Value(c.createdAt),
    );
  }
}
