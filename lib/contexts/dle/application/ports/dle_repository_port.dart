import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';

abstract interface class DleRepositoryPort {
  Future<void> save(
    Dle dle, {
    bool overrideAssets = true,
    bool overrideEditors = true,
  });

  Future<Dle?> find(
    String dleId, {
    bool includeAssets = true,
    bool includeEditors = true,
  });

  Future<List<Dle>> findUserDle(
    String userId, {
    bool includeAssets = true,
    bool includeEditors = true,
  });

  Future<void> delete(String dleId);

  Future<DleEditor?> findEditor({
    required String userId,
    required String dleId,
  });
}
