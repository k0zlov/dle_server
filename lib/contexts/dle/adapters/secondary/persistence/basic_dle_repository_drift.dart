import 'package:dle_server/contexts/dle/application/ports/basic_dle_repository_port.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:dle_server/contexts/dle/domain/entities/selectable_value/selectable_value.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/extensions/basic_dle_extension.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/extensions/parameter_extension.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/extensions/selectable_value_extension.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/extensions/table_extension.dart';
import 'package:injectable/injectable.dart';

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

      final List<SelectableValue> selectables = [];
      final Set<String> parameterIds =
          basicDle.parameters.map((e) => e.id).toSet();

      for (final Parameter parameter in basicDle.parameters) {
        selectables.addAll(parameter.selectableValues);
      }

      await db.selectableValues.deleteWhere(
        (tbl) =>
            tbl.id.isNotIn(selectables.map((e) => UuidValue.fromString(e.id))) &
            tbl.parameterId.isNotIn(parameterIds.map(UuidValue.fromString)),
      );

      if (selectables.isNotEmpty) {
        await db.batch((batch) {
          batch.insertAllOnConflictUpdate(
            db.selectableValues,
            selectables.map(SelectableValueMapperExtension.fromEntity),
          );
        });
      }

      await db.parameters.deleteWhere(
        (tbl) =>
            tbl.id.isNotIn(parameterIds.map(UuidValue.fromString)) &
            tbl.basicDleId.equals(UuidValue.fromString(basicDle.id)),
      );

      await db.batch((batch) {
        batch.insertAllOnConflictUpdate(
          db.parameters,
          basicDle.parameters.map(ParameterMapperExtension.fromEntity),
        );
      });
    });
  }

  @override
  Future<BasicDle?> find(String basicDleId) async {
    final BasicDle? basicDle = await db.basicDles.getOrNull(
      (tbl) => tbl.id.equals(UuidValue.fromString(basicDleId)),
    );

    if (basicDle == null) return null;

    final List<Parameter> parameters = await db.parameters.getWhere(
      (tbl) => tbl.basicDleId.equals(UuidValue.fromString(basicDleId)),
    );

    if (parameters.isEmpty) return basicDle;

    final Set<String> parameterIds = parameters.map((e) => e.id).toSet();

    final List<SelectableValue> selectables = await db.selectableValues
        .getWhere(
          (tbl) => tbl.parameterId.isIn(parameterIds.map(UuidValue.fromString)),
        );

    final List<Parameter> parametersWithSelectables =
        parameters.map((e) {
          return e.copyWith(
            selectableValues:
                selectables.where((s) => s.parameterId == e.id).toList(),
          );
        }).toList();

    return basicDle.copyWith(parameters: parametersWithSelectables);
  }
}
