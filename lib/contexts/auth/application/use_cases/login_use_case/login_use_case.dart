import 'package:dartz/dartz.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/contexts/auth/domain/value_objects/auth_tokens/auth_tokens.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/infrastructure/services/token/jwt_client.dart';
import 'package:dle_server/kernel/infrastructure/services/token/token_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_use_case.freezed.dart';

part 'login_use_case.g.dart';

enum LoginError { noUserWithSuchEmail, wrongPassword }

@freezed
class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String email,
    required String password,
    required String ip,
    required String deviceInfo,
  }) = _LoginParams;

  factory LoginParams.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsFromJson(json);
}

@lazySingleton
class LoginUseCase implements UseCase<LoginError, AuthTokens, LoginParams> {
  const LoginUseCase({required this.repository, required this.tokenService});

  final UsersRepositoryPort repository;
  final TokenService tokenService;

  @override
  Future<Either<LoginError, AuthTokens>> call(LoginParams params) async {
    final User? foundUser = await repository.findUser(
      email: params.email,
      includeSessions: true,
    );

    if (foundUser == null) {
      return const Left(LoginError.noUserWithSuchEmail);
    }

    final bool result = foundUser.checkPassword(params.password);

    if (!result) {
      return const Left(LoginError.wrongPassword);
    }

    final AuthSession session = AuthSession.create(
      userId: foundUser.id,
      ip: params.ip,
      deviceInfo: params.deviceInfo,
    );

    final User userWithSession = foundUser.addSession(session);
    await repository.saveUser(userWithSession, overrideSessions: true);

    return Right(
      AuthTokens(
        accessToken: tokenService.generateAccessToken(
          TokenPayload(userId: userWithSession.id, sessionId: session.id),
        ),
        refreshToken: session.refreshToken,
      ),
    );
  }
}
