import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/domain/entities/character/character.dart';
import 'package:dle_server/contexts/dle/domain/entities/character_hint/character_hint.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/contexts/dle/domain/entities/hint/hint.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/extensions/character_extension.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/extensions/character_hint_extension.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/extensions/dle_asset_extension.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/extensions/dle_editor_extension.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/extensions/dle_extension.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/extensions/hint_extension.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/extensions/table_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DleRepositoryPort)
class DleRepositoryDrift implements DleRepositoryPort {
  const DleRepositoryDrift({required this.db});

  final Database db;

  @override
  Future<void> delete(String dleId) {
    return db.dles.deleteWhere(
      (tbl) => tbl.id.equals(UuidValue.fromString(dleId)),
    );
  }

  @override
  Future<List<Dle>> findUserDle(
    String userId, {
    bool includeAssets = true,
    bool includeEditors = true,
    bool includeCharacters = true,
    bool includeHints = true,
  }) {
    return db.transaction(() async {
      final List<DleEditor> userEditors = await db.dleEditors.getWhere(
        (tbl) => tbl.userId.equals(UuidValue.fromString(userId)),
      );

      final Set<String> dleIds = userEditors.map((e) => e.dleId).toSet();

      final List<Dle> dleList = await db.dles.getWhere(
        (tbl) => tbl.id.isIn(dleIds.map(UuidValue.fromString)),
      );

      final List<Dle> newDleList = [];

      for (final Dle dle in dleList) {
        Dle newDle = dle;
        if (includeAssets) {
          newDle = newDle.copyWith(
            assets: await db.dleAssets.getWhere(
              (tbl) => tbl.dleId.equals(UuidValue.fromString(dle.id)),
            ),
          );
        }

        if (includeEditors) {
          newDle = newDle.copyWith(
            editors: await db.dleEditors.getWhere(
              (tbl) => tbl.dleId.equals(UuidValue.fromString(dle.id)),
            ),
          );
        }

        if (includeCharacters) {
          newDle = newDle.copyWith(
            characters: await db.characters.getWhere(
              (tbl) => tbl.dleId.equals(UuidValue.fromString(dle.id)),
            ),
          );
        }

        if (includeHints) {
          newDle = newDle.copyWith(
            hints: await db.hints.getWhere(
              (tbl) => tbl.dleId.equals(UuidValue.fromString(dle.id)),
            ),
          );

          final List<String> hintIds = newDle.hints.map((e) => e.id).toList();

          newDle = newDle.copyWith(
            characterHints: await db.characterHints.getWhere(
              (tbl) => tbl.hintId.isIn(hintIds.map(UuidValue.fromString)),
            ),
          );
        }

        newDleList.add(newDle);
      }

      return newDleList;
    });
  }

  @override
  Future<void> save(
    Dle dle, {
    bool overrideAssets = true,
    bool overrideEditors = true,
    bool overrideCharacters = true,
    bool overrideHints = true,
  }) {
    return db.transaction(() async {
      await db.dles.insertOnConflictUpdate(DlesMapperExtension.fromEntity(dle));

      if (overrideAssets) {
        final Set<String> assetIds = dle.assets.map((e) => e.id).toSet();
        await db.dleAssets.deleteWhere(
          (tbl) =>
              tbl.id.isNotIn(assetIds.map(UuidValue.fromString)) &
              tbl.dleId.equals(UuidValue.fromString(dle.id)),
        );

        if (dle.assets.isNotEmpty) {
          await db.batch((batch) {
            batch.insertAllOnConflictUpdate(
              db.dleAssets,
              dle.assets.map(DleAssetsMapperExtension.fromEntity),
            );
          });
        }
      }

      if (overrideEditors) {
        final Set<String> editorIds = dle.editors.map((e) => e.id).toSet();
        await db.dleEditors.deleteWhere(
          (tbl) =>
              tbl.id.isNotIn(editorIds.map(UuidValue.fromString)) &
              tbl.dleId.equals(UuidValue.fromString(dle.id)),
        );

        if (dle.editors.isNotEmpty) {
          await db.batch((batch) {
            batch.insertAllOnConflictUpdate(
              db.dleEditors,
              dle.editors.map(DleEditorsMapperExtension.fromEntity),
            );
          });
        }
      }

      if (overrideCharacters) {
        final Set<String> characterIds =
            dle.characters.map((e) => e.id).toSet();
        await db.characters.deleteWhere(
          (tbl) =>
              tbl.id.isNotIn(characterIds.map(UuidValue.fromString)) &
              tbl.dleId.equals(UuidValue.fromString(dle.id)),
        );

        if (dle.characters.isNotEmpty) {
          await db.batch((batch) {
            batch.insertAllOnConflictUpdate(
              db.characters,
              dle.characters.map(CharacterMapperExtension.fromEntity),
            );
          });
        }
      }

      if (overrideHints) {
        final Set<String> hintIds = dle.hints.map((e) => e.id).toSet();

        await db.hints.deleteWhere(
          (tbl) =>
              tbl.id.isNotIn(hintIds.map(UuidValue.fromString)) &
              tbl.dleId.equals(UuidValue.fromString(dle.id)),
        );

        if (dle.hints.isNotEmpty) {
          await db.batch((batch) {
            batch.insertAllOnConflictUpdate(
              db.hints,
              dle.hints.map(HintMapperExtension.fromEntity),
            );
          });
        }

        final Set<String> characterHintIds =
            dle.characterHints.map((e) => e.id).toSet();

        await db.characterHints.deleteWhere(
          (tbl) =>
              tbl.id.isNotIn(characterHintIds.map(UuidValue.fromString)) &
              tbl.hintId.isIn(hintIds.map(UuidValue.fromString)),
        );

        if (dle.characterHints.isNotEmpty) {
          await db.batch((batch) {
            batch.insertAllOnConflictUpdate(
              db.characterHints,
              dle.characterHints.map(CharacterHintMapperExtension.fromEntity),
            );
          });
        }
      }
    });
  }

  @override
  Future<Dle?> find(
    String dleId, {
    bool includeAssets = true,
    bool includeEditors = true,
    bool includeCharacters = true,
    bool includeHints = true,
  }) {
    return db.transaction(() async {
      Dle? dle = await db.dles.getOrNull(
        (tbl) => tbl.id.equals(UuidValue.fromString(dleId)),
      );

      if (dle == null) return null;

      if (includeAssets) {
        final List<DleAsset> assets = await db.dleAssets.getWhere(
          (tbl) => tbl.dleId.equals(UuidValue.fromString(dle!.id)),
        );

        dle = dle.copyWith(assets: assets);
      }

      if (includeEditors) {
        final List<DleEditor> editors = await db.dleEditors.getWhere(
          (tbl) => tbl.dleId.equals(UuidValue.fromString(dle!.id)),
        );

        dle = dle.copyWith(editors: editors);
      }

      if (includeCharacters) {
        final List<Character> characters = await db.characters.getWhere(
          (tbl) => tbl.dleId.equals(UuidValue.fromString(dleId)),
        );

        dle = dle.copyWith(characters: characters);
      }

      if (includeHints) {
        final List<Hint> hints = await db.hints.getWhere(
          (tbl) => tbl.dleId.equals(UuidValue.fromString(dleId)),
        );

        final Set<String> hintIds = hints.map((e) => e.id).toSet();

        final List<CharacterHint> characterHints = await db.characterHints
            .getWhere(
              (tbl) => tbl.hintId.isIn(hintIds.map(UuidValue.fromString)),
            );

        dle = dle.copyWith(hints: hints, characterHints: characterHints);
      }

      return dle;
    });
  }

  @override
  Future<DleEditor?> findEditor({
    required String userId,
    required String dleId,
  }) {
    return db.dleEditors.getOrNull(
      (tbl) =>
          tbl.userId.equals(UuidValue.fromString(userId)) &
          tbl.dleId.equals(UuidValue.fromString(dleId)),
    );
  }

  @override
  Future<Character?> findCharacter(String characterId) {
    return db.characters.getOrNull(
      (tbl) => tbl.id.equals(UuidValue.fromString(characterId)),
    );
  }
}
