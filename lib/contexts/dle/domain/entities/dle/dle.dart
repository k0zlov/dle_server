import 'package:collection/collection.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/dle/domain/entities/character/character.dart';
import 'package:dle_server/contexts/dle/domain/entities/character_hint/character_hint.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/contexts/dle/domain/entities/hint/hint.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'dle.mapper.dart';

@MappableEnum()
enum DleType { basic }

@MappableClass()
class Dle extends Entity with DleMappable {
  Dle({
    super.id,
    required this.title,
    required this.description,
    required this.type,
    required this.updatedAt,
    required this.createdAt,
    required this.isPrivate,
    this.assets = const <DleAsset>[],
    this.editors = const <DleEditor>[],
    this.characters = const <Character>[],
    this.hints = const <Hint>[],
    this.characterHints = const <CharacterHint>[],
  });

  Dle.create({
    required this.title,
    required this.type,
    this.description,
    this.assets = const <DleAsset>[],
    this.editors = const <DleEditor>[],
    this.characters = const <Character>[],
    this.hints = const <Hint>[],
    this.characterHints = const <CharacterHint>[],
  }) : isPrivate = true,
       updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String title;
  final String? description;
  final DleType type;
  final bool isPrivate;
  final List<DleAsset> assets;
  final List<DleEditor> editors;
  final List<Character> characters;
  final List<Hint> hints;
  final List<CharacterHint> characterHints;

  final DateTime updatedAt;
  final DateTime createdAt;

  /// Check if a user can manage dle
  bool userCanManageDle(String userId) {
    return editors.any((e) => e.userId == userId);
  }

  // Edit DLE metadata
  Dle edit({String? title, String? description, bool? isPrivate}) {
    return copyWith(
      title: title,
      isPrivate: isPrivate,
      description: description,
      updatedAt: DateTime.now(),
    );
  }

  // --- Asset management ---
  Dle addAsset(DleAsset asset) {
    return copyWith(
      assets: [asset, ...assets.where((e) => e.type != asset.type)],
      updatedAt: DateTime.now(),
    );
  }

  Dle deleteAsset(DleAssetType assetType) {
    return copyWith(
      assets: [...assets.where((e) => e.type != assetType)],
      updatedAt: DateTime.now(),
    );
  }

  // --- Editor management ---
  Dle addEditor(DleEditor editor) {
    return copyWith(
      editors: [editor, ...editors.where((e) => e.userId != editor.userId)],
      updatedAt: DateTime.now(),
    );
  }

  Dle kickEditor(String userId) {
    return copyWith(
      editors: [...editors.where((e) => e.userId != userId)],
      updatedAt: DateTime.now(),
    );
  }

  Dle updateEditor(DleEditor editor) {
    return copyWith(
      editors: [editor, ...editors.where((e) => e.id != editor.id)],
      updatedAt: DateTime.now(),
    );
  }

  // --- Character management ---
  Dle addCharacter(Character character) {
    return copyWith(
      characters: [character, ...characters.where((e) => e.id != character.id)],
      updatedAt: DateTime.now(),
    );
  }

  Dle removeCharacter(String characterId) {
    return copyWith(
      characters: [...characters.where((e) => e.id != characterId)],
      characterHints: [
        ...characterHints.where((e) => e.characterId != characterId),
      ],
      updatedAt: DateTime.now(),
    );
  }

  Dle editCharacter(Character character) {
    return copyWith(
      characters: [character, ...characters.where((e) => e.id != character.id)],
      updatedAt: DateTime.now(),
    );
  }

  // --- Hint management ---
  Dle addHint(Hint hint) {
    return copyWith(
      hints: [hint, ...hints.where((e) => e.id != hint.id)],
      updatedAt: DateTime.now(),
    );
  }

  Dle removeHint(String hintId) {
    return copyWith(
      hints: [...hints.where((e) => e.id != hintId)],
      characterHints: [...characterHints.where((e) => e.hintId != hintId)],
      updatedAt: DateTime.now(),
    );
  }

  Dle editHint(Hint hint) {
    final Hint? foundHint = hints.firstWhereOrNull((e) => e.id == hint.id);

    if (foundHint == null) return addHint(hint);

    Dle updatedDle = copyWith(
      hints: [hint, ...hints.where((e) => e.id != hint.id)],
      updatedAt: DateTime.now(),
    );

    if (foundHint.type != hint.type) {
      updatedDle = updatedDle.copyWith(
        characterHints:
            characterHints.where((e) => e.hintId != hint.id).toList(),
      );
    }

    return updatedDle;
  }

  // --- CharacterHint management ---
  Dle addCharacterHint(CharacterHint characterHint) {
    return copyWith(
      characterHints: [
        characterHint,
        ...characterHints.where((e) => e.id != characterHint.id),
      ],
      updatedAt: DateTime.now(),
    );
  }

  Dle removeCharacterHint(String characterHintId) {
    return copyWith(
      characterHints: [...characterHints.where((e) => e.id != characterHintId)],
      updatedAt: DateTime.now(),
    );
  }

  Dle editCharacterHint(CharacterHint characterHint) {
    return copyWith(
      updatedAt: DateTime.now(),
      characterHints: [
        characterHint,
        ...characterHints.where((e) => e.id != characterHint.id),
      ],
    );
  }
}
