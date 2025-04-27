import 'package:dle_server/contexts/dle/domain/entities/hint/hint.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';

extension HintMapperExtension on HintsCompanion {
  static HintsCompanion fromEntity(Hint h) {
    return HintsCompanion(
      id: Value(h.id),
      dleId: Value(h.dleId),
      title: Value(h.title),
      description: Value(h.description),
      type: Value(h.type),
      requiredTries: Value(h.requiredTries),
      isHidden: Value(h.isHidden),
      updatedAt: Value(h.updatedAt),
      createdAt: Value(h.createdAt),
    );
  }
}
