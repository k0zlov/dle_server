import 'package:collection/collection.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

extension EntityListExtension on List<Entity> {
  Entity? findById(String id) {
    return firstWhereOrNull((e) => e.id == id);
  }
}
