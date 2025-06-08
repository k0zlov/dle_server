import 'package:dle_server/contexts/dle/domain/entities/character_parameter/character_parameter.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';

extension CharacterParameterMapperExtension on CharacterParametersCompanion {
  static CharacterParametersCompanion fromEntity(
    CharacterParameter characterParameter,
  ) {
    return CharacterParametersCompanion(
      id: Value(characterParameter.id),
      characterId: Value(characterParameter.characterId),
      parameterId: Value(characterParameter.parameterId),
      index: Value(characterParameter.index),
      value: Value.absentIfNull(characterParameter.value),
      selectableId: Value(characterParameter.selectableId),
      updatedAt: Value(characterParameter.updatedAt),
      createdAt: Value(characterParameter.createdAt),
    );
  }
}
