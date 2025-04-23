import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/extensions/table_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DleRepositoryPort)
class DleRepositoryDrift implements DleRepositoryPort {
  const DleRepositoryDrift({required this.db});

  final Database db;

  Insertable<Dle> mapDle(Dle dle) {
    return DlesCompanion(
      id: Value(dle.id),
      title: Value(dle.title),
      description: Value(dle.description),
      type: Value(dle.type),
      isPrivate: Value(dle.isPrivate),
      updatedAt: Value(dle.updatedAt),
      createdAt: Value(dle.createdAt),
    );
  }

  Insertable<DleEditor> mapEditor(DleEditor editor) {
    return DleEditorsCompanion(
      id: Value(editor.id),
      userId: Value(editor.userId),
      dleId: Value(editor.dleId),
      role: Value(editor.role),
      updatedAt: Value(editor.updatedAt),
      createdAt: Value(editor.createdAt),
    );
  }

  Insertable<DleAsset> mapAsset(DleAsset asset) {
    return DleAssetsCompanion(
      id: Value(asset.id),
      userId: Value(asset.userId),
      uploadId: Value(asset.uploadId),
      dleId: Value(asset.dleId),
      type: Value(asset.type),
      updatedAt: Value(asset.updatedAt),
      createdAt: Value(asset.createdAt),
    );
  }

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
          newDle = dle.copyWith(
            assets: await db.dleAssets.getWhere(
              (tbl) => tbl.dleId.equals(UuidValue.fromString(dle.id)),
            ),
          );
        }

        if (includeEditors) {
          newDle = dle.copyWith(
            editors: await db.dleEditors.getWhere(
              (tbl) => tbl.dleId.equals(UuidValue.fromString(dle.id)),
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
  }) {
    return db.transaction(() async {
      await db.dles.insertOnConflictUpdate(mapDle(dle));

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
              dle.assets.map(mapAsset),
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
              dle.editors.map(mapEditor),
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
}
