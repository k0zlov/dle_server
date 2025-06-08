import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';

extension BasicDleMapperExtension on BasicDlesCompanion {
  static BasicDlesCompanion fromEntity(BasicDle basicDle) {
    return BasicDlesCompanion(
      id: Value(basicDle.id),
      dleId: Value(basicDle.dleId),
      updatedAt: Value(basicDle.updatedAt),
      createdAt: Value(basicDle.createdAt),
    );
  }
}
