import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_basic_dle_dto/manage_basic_dle_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/exceptions/dle_exceptions_mapper.dart';
import 'package:dle_server/contexts/dle/application/use_cases/get_basic_dle_use_case/get_basic_dle_use_case.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class BasicDleManageRestController {
  BasicDleManageRestController({
    required this.mapper,
    required this.getBasicDleUseCase,
  });

  final DleExceptionsMapper mapper;
  final GetBasicDleUseCase getBasicDleUseCase;

  Future<Response> get(Request req) async {
    final String dleId = req.url.pathSegments.first;
    final String userId = req.payload.userId;

    final GetBasicDleParams params = GetBasicDleParams.fromJson(
      req.data.copyWith({'userId': userId, 'dleId': dleId}),
    );

    try {
      final BasicDle basicDle = await getBasicDleUseCase(params);
      return Response.json(body: ManageBasicDleDto.fromEntity(basicDle));
    } catch (e) {
      throw mapper(e);
    }
  }
}
