import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/dle/domain/exceptions/dle_exceptions.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'hint.mapper.dart';

@MappableEnum()
enum HintType {
  text;

  bool get isText => this == text;
}

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

  void checkValue(dynamic value) {
    if (type.isText && value is String) return;

    throw WrongHintValueTypeException();
  }

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
