import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_basic_dle_dto/manage_basic_dle_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/exceptions/dle_exceptions_mapper.dart';
import 'package:dle_server/contexts/dle/application/use_cases/create_parameter_use_case/create_parameter_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/create_selectable_value_use_case/create_selectable_value_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/edit_parameter_use_case/edit_parameter_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/edit_selectable_value_use_case/edit_selectable_value_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/remove_parameter_use_case/remove_parameter_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/remove_selectable_value_use_case/remove_selectable_value_use_case.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class ParametersRestController {
  const ParametersRestController({
    required this.mapper,
    required this.createParameterUseCase,
    required this.editParameterUseCase,
    required this.removeParameterUseCase,
    required this.createSelectableValueUseCase,
    required this.editSelectableValueUseCase,
    required this.removeSelectableValueUseCase,
  });

  final DleExceptionsMapper mapper;

  final CreateParameterUseCase createParameterUseCase;
  final EditParameterUseCase editParameterUseCase;
  final RemoveParameterUseCase removeParameterUseCase;

  final CreateSelectableValueUseCase createSelectableValueUseCase;
  final EditSelectableValueUseCase editSelectableValueUseCase;
  final RemoveSelectableValueUseCase removeSelectableValueUseCase;

  Future<Response> createParameter(Request req) async {
    final String basicDleId = req.url.pathSegments.first;
    final String userId = req.payload.userId;

    final CreateParameterParams params = CreateParameterParams.fromJson(
      req.data.copyWith({'userId': userId, 'basicDleId': basicDleId}),
    );

    try {
      final BasicDle basicDle = await createParameterUseCase(params);
      return Response.json(body: ManageBasicDleDto.fromEntity(basicDle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> updateParameter(Request req) async {
    final String basicDleId = req.url.pathSegments.first;
    final String parameterId = req.url.pathSegments.last;
    final String userId = req.payload.userId;

    final EditParameterParams params = EditParameterParams.fromJson(
      req.data.copyWith({
        'userId': userId,
        'basicDleId': basicDleId,
        'parameterId': parameterId,
      }),
    );

    try {
      final BasicDle basicDle = await editParameterUseCase(params);
      return Response.json(body: ManageBasicDleDto.fromEntity(basicDle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> removeParameter(Request req) async {
    final String basicDleId = req.url.pathSegments.first;
    final String parameterId = req.url.pathSegments.last;
    final String userId = req.payload.userId;

    final RemoveParameterParams params = RemoveParameterParams.fromJson(
      req.data.copyWith({
        'userId': userId,
        'basicDleId': basicDleId,
        'parameterId': parameterId,
      }),
    );

    try {
      final BasicDle basicDle = await removeParameterUseCase(params);
      return Response.json(body: ManageBasicDleDto.fromEntity(basicDle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> createSelectableValue(Request req) async {
    final String basicDleId = req.url.pathSegments.first;
    final String parameterId = req.url.pathSegments[2];
    final String userId = req.payload.userId;

    final CreateSelectableValueParams params =
        CreateSelectableValueParams.fromJson(
          req.data.copyWith({
            'userId': userId,
            'basicDleId': basicDleId,
            'parameterId': parameterId,
          }),
        );

    try {
      final BasicDle basicDle = await createSelectableValueUseCase(params);
      return Response.json(body: ManageBasicDleDto.fromEntity(basicDle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> editSelectableValue(Request req) async {
    final String basicDleId = req.url.pathSegments.first;
    final String selectableId = req.url.pathSegments.last;
    final String userId = req.payload.userId;

    final EditSelectableValueParams params = EditSelectableValueParams.fromJson(
      req.data.copyWith({
        'userId': userId,
        'basicDleId': basicDleId,
        'selectableId': selectableId,
      }),
    );

    try {
      final BasicDle basicDle = await editSelectableValueUseCase(params);
      return Response.json(body: ManageBasicDleDto.fromEntity(basicDle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> removeSelectableValue(Request req) async {
    final String basicDleId = req.url.pathSegments.first;
    final String selectableId = req.url.pathSegments.last;
    final String userId = req.payload.userId;

    final RemoveSelectableValueParams params =
        RemoveSelectableValueParams.fromJson(
          req.data.copyWith({
            'userId': userId,
            'basicDleId': basicDleId,
            'selectableId': selectableId,
          }),
        );

    try {
      final BasicDle basicDle = await removeSelectableValueUseCase(params);
      return Response.json(body: ManageBasicDleDto.fromEntity(basicDle));
    } catch (e) {
      throw mapper(e);
    }
  }
}
