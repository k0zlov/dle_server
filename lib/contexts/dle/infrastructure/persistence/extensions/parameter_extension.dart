import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';

extension ParameterMapperExtension on ParametersCompanion {
  static ParametersCompanion fromEntity(Parameter parameter) {
    return ParametersCompanion(
      id: Value(parameter.id),
      basicDleId: Value(parameter.basicDleId),
      title: Value(parameter.title),
      description: Value(parameter.description),
      type: Value(parameter.type),
      compareMode: Value(parameter.compareMode),
      isReverseCompared: Value(parameter.isReverseCompared),
      allowsMultipleValues: Value(parameter.allowsMultipleValues),
      isSelectable: Value(parameter.isSelectable),
      isHidden: Value(parameter.isHidden),
      updatedAt: Value(parameter.updatedAt),
      createdAt: Value(parameter.createdAt),
    );
  }
}
