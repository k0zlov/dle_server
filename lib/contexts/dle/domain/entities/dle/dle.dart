import 'package:collection/collection.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
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
  });

  Dle.create({
    required this.title,
    required this.type,
    this.description,
    this.assets = const <DleAsset>[],
    this.editors = const <DleEditor>[],
  }) : isPrivate = true,
       updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String title;
  final String? description;
  final DleType type;
  final bool isPrivate;
  final List<DleAsset> assets;
  final List<DleEditor> editors;

  final DateTime updatedAt;
  final DateTime createdAt;

  DleAsset? get icon =>
      assets.firstWhereOrNull((e) => e.type == DleAssetType.icon);

  Dle edit({String? title, String? description, bool? isPrivate}) {
    return copyWith(
      title: title,
      isPrivate: isPrivate,
      description: description,
      updatedAt: DateTime.now(),
    );
  }

  Dle addAsset(DleAsset asset) {
    return copyWith(
      assets: [asset, ...assets.where((e) => e.type != asset.type)],
    );
  }

  Dle deleteAsset(DleAssetType assetType) {
    return copyWith(assets: [...assets.where((e) => e.type != assetType)]);
  }

  Dle addEditor(DleEditor editor) {
    return copyWith(
      editors: [editor, ...editors.where((e) => e.userId != editor.userId)],
    );
  }

  Dle kickEditor(String userId) {
    return copyWith(editors: [...editors.where((e) => e.userId != userId)]);
  }
}
