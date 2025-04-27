import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';

extension DleEditorsMapperExtension on DleEditorsCompanion {
  static DleEditorsCompanion fromEntity(DleEditor editor) {
    return DleEditorsCompanion(
      id: Value(editor.id),
      userId: Value(editor.userId),
      dleId: Value(editor.dleId),
      role: Value(editor.role),
      updatedAt: Value(editor.updatedAt),
      createdAt: Value(editor.createdAt),
    );
  }
}
