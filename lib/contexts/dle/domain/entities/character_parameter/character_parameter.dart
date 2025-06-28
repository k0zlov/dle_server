import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'character_parameter.mapper.dart';

@MappableClass()
class CharacterParameter extends Entity with CharacterParameterMappable {
  CharacterParameter({
    super.id,
    required this.characterId,
    required this.parameterId,
    required this.value,
    required this.index,
    required this.selectableId,
    required this.updatedAt,
    required this.createdAt,
  });

  CharacterParameter.create({
    required this.characterId,
    required this.parameterId,
    this.value,
    this.index = 0,
    this.selectableId,
  }) : updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String characterId;
  final String parameterId;
  final int index;
  final String? value;
  final String? selectableId;

  final DateTime updatedAt;
  final DateTime createdAt;

  CharacterParameter edit({String? selectableId, int? index, String? value}) {
    return copyWith(
      selectableId: selectableId,
      index: index,
      value: value,
      updatedAt: DateTime.now(),
    );
  }
}
