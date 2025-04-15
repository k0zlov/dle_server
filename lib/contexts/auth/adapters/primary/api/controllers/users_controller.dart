import 'package:dle_server/contexts/auth/adapters/primary/api/dto/user_dto/user_dto.dart';
import 'package:dle_server/contexts/auth/adapters/primary/api/exceptions/auth_exceptions_mapper.dart';
import 'package:dle_server/contexts/auth/application/use_cases/change_password_use_case/change_password_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/get_current_user_use_case/get_current_user_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/update_user_use_case/update_user_use_case.dart';
import 'package:dle_server/kernel/adapters/primary/api/dto/message_dto.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class UsersRestController {
  const UsersRestController({
    required this.getCurrentUserUseCase,
    required this.updateUserUseCase,
    required this.changePasswordUseCase,
    required this.mapper,
  });

  final GetCurrentUserUseCase getCurrentUserUseCase;
  final UpdateUserUseCase updateUserUseCase;
  final ChangePasswordUseCase changePasswordUseCase;
  final AuthExceptionsMapper mapper;

  Future<Response> getCurrentUser(Request req) async {
    final params = GetCurrentUserParams(userId: req.payload.userId);

    try {
      final user = await getCurrentUserUseCase(params);
      return Response.json(body: UserDto.fromEntity(user));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> updateUser(Request req) async {
    final params = UpdateUserParams.fromJson(
      req.data.copyWith({'userId': req.payload.userId}),
    );

    try {
      final user = await updateUserUseCase(params);
      return Response.json(body: UserDto.fromEntity(user));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> changePassword(Request req) async {
    final params = ChangePasswordParams.fromJson(
      req.data.copyWith({'userId': req.payload.userId}),
    );

    try {
      await changePasswordUseCase(params);
      return Response.json(
        body: const MessageDto(message: 'Successfully changed password'),
      );
    } catch (e) {
      throw mapper(e);
    }
  }
}
