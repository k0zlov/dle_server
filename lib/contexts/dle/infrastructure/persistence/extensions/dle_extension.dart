import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';

extension DlesMapperExtension on DlesCompanion {
  static DlesCompanion fromEntity(Dle dle) {
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
}
