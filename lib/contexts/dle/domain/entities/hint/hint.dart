import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'hint.mapper.dart';

@MappableEnum()
enum HintType { text }

@MappableClass()
class Hint extends Entity with HintMappable {
  Hint({
    super.id,
    required this.dleId,
    required this.title,
    required this.description,
    required this.type,
    required this.requiredTries,
    required this.isHidden,
    required this.updatedAt,
    required this.createdAt,
  });

  Hint.create({
    required this.dleId,
    required this.title,
    required this.type,
    required this.requiredTries,
    this.isHidden = false,
    this.description = '',
  }) : updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String dleId;
  final String title;
  final String description;
  final HintType type;
  final int requiredTries;
  final bool isHidden;
  final DateTime updatedAt;
  final DateTime createdAt;

  Hint edit({
    String? title,
    String? description,
    int? requiredTries,
    bool? isHidden,
    HintType? type,
  }) {
    return copyWith(
      title: title,
      description: description,
      requiredTries: requiredTries,
      isHidden: isHidden,
      type: type,
      updatedAt: DateTime.now(),
    );
  }
}
