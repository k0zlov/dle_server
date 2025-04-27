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

  /// Check if a user can manage characters
  bool userCanManageCharacters(String userId) {
    return editors.any((e) => e.userId == userId);
  }

  /// Check if a user can manage hints
  bool userCanManageHints(String userId) {
    return editors.any((e) => e.userId == userId);
  }

  // Get the icon asset
  DleAsset? get icon =>
      assets.firstWhereOrNull((e) => e.type == DleAssetType.icon);

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
    );
  }

  Dle deleteAsset(DleAssetType assetType) {
    return copyWith(assets: [...assets.where((e) => e.type != assetType)]);
  }

  // --- Editor management ---
  Dle addEditor(DleEditor editor) {
    return copyWith(
      editors: [editor, ...editors.where((e) => e.userId != editor.userId)],
    );
  }

  Dle kickEditor(String userId) {
    return copyWith(editors: [...editors.where((e) => e.userId != userId)]);
  }

  Dle updateEditor(DleEditor editor) {
    return copyWith(
      editors: [editor, ...editors.where((e) => e.id != editor.id)],
    );
  }

  // --- Character management ---
  Dle addCharacter(Character character) {
    return copyWith(
      characters: [character, ...characters.where((e) => e.id != character.id)],
    );
  }

  Dle removeCharacter(String characterId) {
    return copyWith(
      characters: [...characters.where((e) => e.id != characterId)],
    );
  }

  Dle editCharacter(Character character) {
    return copyWith(
      characters: [character, ...characters.where((e) => e.id != character.id)],
    );
  }

  // --- Hint management ---
  Dle addHint(Hint hint) {
    return copyWith(hints: [hint, ...hints.where((e) => e.id != hint.id)]);
  }

  Dle removeHint(String hintId) {
    return copyWith(
      hints: [...hints.where((e) => e.id != hintId)],
      characterHints: [...characterHints.where((e) => e.hintId != hintId)],
    );
  }

  Dle editHint(Hint hint) {
    final Hint? foundHint = hints.firstWhereOrNull((e) => e.id == hint.id);

    if (foundHint == null) return addHint(hint);

    Dle updatedDle = copyWith(
      hints: [hint, ...hints.where((e) => e.id != hint.id)],
    );

    if (foundHint.type != hint.type) {
      updatedDle = updatedDle.copyWith(
        characterHints: characterHints.map((e) => e.clearValue()).toList(),
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
    );
  }

  Dle removeCharacterHint(String characterHintId) {
    return copyWith(
      characterHints: [...characterHints.where((e) => e.id != characterHintId)],
    );
  }

  Dle editCharacterHint(CharacterHint characterHint) {
    return copyWith(
      characterHints: [
        characterHint,
        ...characterHints.where((e) => e.id != characterHint.id),
      ],
    );
  }
}
