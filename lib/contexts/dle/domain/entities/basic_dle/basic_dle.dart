import 'package:collection/collection.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/dle/domain/entities/character_parameter/character_parameter.dart';
import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:dle_server/contexts/dle/domain/entities/selectable_value/selectable_value.dart';
import 'package:dle_server/contexts/dle/domain/exceptions/dle_exceptions.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'basic_dle.mapper.dart';

@MappableClass()
class BasicDle extends Entity with BasicDleMappable {
  BasicDle({
    super.id,
    required this.dleId,
    required this.updatedAt,
    required this.createdAt,
    this.parameters = const <Parameter>[],
    this.characterParameters = const <CharacterParameter>[],
    this.selectableValues = const <SelectableValue>[],
  });

  BasicDle.create({
    required this.dleId,
    this.parameters = const <Parameter>[],
    this.characterParameters = const <CharacterParameter>[],
    this.selectableValues = const <SelectableValue>[],
  }) : updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String dleId;

  final List<Parameter> parameters;
  final List<CharacterParameter> characterParameters;
  final List<SelectableValue> selectableValues;

  final DateTime updatedAt;
  final DateTime createdAt;

  BasicDle editParameter(Parameter parameter) {
    if (parameters.length > 8) {
      throw TooManyParametersInBasicDleException();
    }

    List<CharacterParameter> newCharacterParameters = characterParameters;

    if (!parameter.allowsMultipleValues) {
      final List<CharacterParameter> characterParametersOfThisParameter =
          characterParameters
              .where((e) => e.parameterId == parameter.id)
              .toList();

      final Map<String, CharacterParameter> uniqueCharacterParameters = {};

      for (final CharacterParameter cp in characterParametersOfThisParameter) {
        if (!uniqueCharacterParameters.containsKey(cp.characterId)) {
          uniqueCharacterParameters[cp.characterId] = cp;
        }
      }

      final List<CharacterParameter> reducedCharacterParameters =
          uniqueCharacterParameters.values.toList();

      newCharacterParameters = [
        ...reducedCharacterParameters,
        ...characterParameters.where((e) => e.parameterId != parameter.id),
      ];
    }

    return copyWith(
      characterParameters: newCharacterParameters,
      parameters: [...parameters.where((e) => e.id != parameter.id), parameter],
      updatedAt: DateTime.now(),
    );
  }

  BasicDle removeParameter(String parameterId) {
    return copyWith(
      parameters: parameters.where((e) => e.id != parameterId).toList(),
      characterParameters:
          characterParameters
              .where((e) => e.parameterId != parameterId)
              .toList(),
      updatedAt: DateTime.now(),
    );
  }

  BasicDle addParameter(Parameter parameter) {
    return editParameter(parameter);
  }

  BasicDle addCharacterParameter(CharacterParameter characterParameter) {
    final Parameter p = parameters.firstWhere(
      (e) => e.id == characterParameter.parameterId,
    );

    if (!p.allowsMultipleValues) {
      final CharacterParameter? existingCp = characterParameters
          .firstWhereOrNull(
            (e) =>
                e.parameterId == p.id &&
                e.characterId == characterParameter.characterId,
          );

      if (existingCp != null) {
        throw MultipleValuesNotAllowedException();
      }
    }

    return editCharacterParameter(characterParameter);
  }

  BasicDle editCharacterParameter(CharacterParameter characterParameter) {
    return copyWith(
      characterParameters: [
        ...characterParameters.where((e) => e.id != characterParameter.id),
        characterParameter,
      ],
      updatedAt: DateTime.now(),
    );
  }

  BasicDle removeCharacterParameter(String characterParameterId) {
    return copyWith(
      characterParameters:
          characterParameters
              .where((e) => e.id != characterParameterId)
              .toList(),
      updatedAt: DateTime.now(),
    );
  }

  BasicDle addSelectableValue(SelectableValue value) {
    return editSelectableValue(value);
  }

  BasicDle editSelectableValue(SelectableValue value) {
    return copyWith(
      selectableValues: [
        ...selectableValues.where((e) => e.id != value.id),
        value,
      ],
      updatedAt: DateTime.now(),
    );
  }

  BasicDle removeSelectableValue(String selectableId) {
    return copyWith(
      selectableValues: [
        ...selectableValues.where((e) => e.id != selectableId),
      ],
      updatedAt: DateTime.now(),
    );
  }
}
