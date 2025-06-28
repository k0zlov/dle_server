import 'package:dle_server/contexts/dle/application/ports/basic_dle_repository_port.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/character_parameter/character_parameter.dart';
import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:dle_server/contexts/dle/domain/entities/selectable_value/selectable_value.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/extensions/basic_dle_extension.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/extensions/parameter_extension.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/extensions/selectable_value_extension.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/extensions/table_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@LazySingleton(as: BasicDleRepositoryPort)
class BasicDleRepositoryDrift implements BasicDleRepositoryPort {
  const BasicDleRepositoryDrift({required this.db});

  final Database db;

  @override
  Future<void> save(BasicDle basicDle) {
    return db.transaction(() async {
      await db.basicDles.insertOnConflictUpdate(
        BasicDleMapperExtension.fromEntity(basicDle),
      );

      final Set<UuidValue> parameterIds =
          basicDle.parameters.map((e) => UuidValue.fromString(e.id)).toSet();

      await db.parameters.deleteWhere(
        (tbl) =>
            tbl.id.isNotIn(parameterIds) &
            tbl.basicDleId.equals(UuidValue.fromString(basicDle.id)),
      );

      await db.batch((batch) {
        batch.insertAllOnConflictUpdate(
          db.parameters,
          basicDle.parameters.map(ParameterMapperExtension.fromEntity),
        );
      });

      final Set<UuidValue> selectableIds =
          basicDle.selectableValues
              .map((e) => UuidValue.fromString(e.id))
              .toSet();

      await db.selectableValues.deleteWhere(
        (tbl) =>
            tbl.id.isNotIn(selectableIds) & tbl.parameterId.isIn(parameterIds),
      );

      await db.batch((batch) {
        batch.insertAllOnConflictUpdate(
          db.selectableValues,
          basicDle.selectableValues.map(
            SelectableValueMapperExtension.fromEntity,
          ),
        );
      });

      final Set<String> characterParamIds =
          basicDle.characterParameters.map((e) => e.id).toSet();

      await db.characterParameters.deleteWhere(
        (tbl) =>
            tbl.id.isNotIn(characterParamIds.map(UuidValue.fromString)) &
            tbl.parameterId.isIn(parameterIds),
      );
    });
  }

  @override
  Future<BasicDle?> find({String? basicDleId, String? dleId}) async {
    assert(
      basicDleId != null || dleId != null,
      'Either basicDleId or dleId must be provided.',
    );

    final BasicDle? basicDle = await db.basicDles.getOrNull((tbl) {
      if (basicDleId != null) {
        return tbl.id.equals(UuidValue.fromString(basicDleId));
      } else {
        return tbl.dleId.equals(UuidValue.fromString(dleId!));
      }
    });

    if (basicDle == null) return null;

    final List<Parameter> parameters = await db.parameters.getWhere(
      (tbl) => tbl.basicDleId.equals(UuidValue.fromString(basicDle.id)),
    );

    if (parameters.isEmpty) return basicDle;

    final Set<UuidValue> parameterIds =
        parameters.map((e) => UuidValue.fromString(e.id)).toSet();

    final List<SelectableValue> selectables = await db.selectableValues
        .getWhere((tbl) => tbl.parameterId.isIn(parameterIds));

    final List<CharacterParameter> characterParams = await db
        .characterParameters
        .getWhere((tbl) => tbl.parameterId.isIn(parameterIds));

    return basicDle.copyWith(
      parameters: parameters,
      selectableValues: selectables,
      characterParameters: characterParams,
    );
  }
}
