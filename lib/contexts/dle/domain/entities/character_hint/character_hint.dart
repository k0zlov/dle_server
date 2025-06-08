import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/dle/domain/value_objects/hint_value/hint_value.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'character_hint.mapper.dart';

@MappableClass()
class CharacterHint extends Entity with CharacterHintMappable {
  CharacterHint({
    super.id,
    required this.hintId,
    required this.characterId,
    required this.value,
    required this.updatedAt,
    required this.createdAt,
  });

  CharacterHint.create({
    required this.hintId,
    required this.characterId,
    required this.value,
  }) : updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String hintId;
  final String characterId;
  final HintValue value;

  final DateTime updatedAt;
  final DateTime createdAt;

  CharacterHint edit({HintValue? value}) {
    return copyWith(value: value, updatedAt: DateTime.now());
  }
}
