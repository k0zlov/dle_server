import 'package:dartz/dartz.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/contexts/auth/domain/value_objects/auth_tokens/auth_tokens.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/infrastructure/services/token/jwt_client.dart';
import 'package:dle_server/kernel/infrastructure/services/token/token_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'refresh_session_use_case.freezed.dart';

part 'refresh_session_use_case.g.dart';

enum RefreshSessionError { sessionNotFound, invalidToken, sessionExpired }

@freezed
class RefreshSessionParams with _$RefreshSessionParams {
  const factory RefreshSessionParams({
    required String refreshToken,
    required String ip,
    required String deviceInfo,
  }) = _RefreshSessionParams;

  factory RefreshSessionParams.fromJson(Map<String, dynamic> json) =>
      _$RefreshSessionParamsFromJson(json);
}

@lazySingleton
class RefreshSessionUseCase
    implements UseCase<RefreshSessionError, AuthTokens, RefreshSessionParams> {
  const RefreshSessionUseCase({
    required this.repository,
    required this.tokenService,
  });

  final UsersRepositoryPort repository;
  final TokenService tokenService;

  @override
  Future<Either<RefreshSessionError, AuthTokens>> call(
    RefreshSessionParams params,
  ) async {
    final AuthSession? foundSession = await repository.findSession(
      token: params.refreshToken,
    );

    if (foundSession == null) {
      return const Left(RefreshSessionError.sessionNotFound);
    }

    final sessionOrError = foundSession.refresh(
      token: params.refreshToken,
      ip: params.ip,
      deviceInfo: params.deviceInfo,
    );

    return sessionOrError.fold(
      (err) => Left(switch (err) {
        AuthSessionError.sessionNotFound => RefreshSessionError.sessionNotFound,
        AuthSessionError.invalidToken => RefreshSessionError.invalidToken,
        AuthSessionError.sessionExpired => RefreshSessionError.sessionExpired,
      }),
      (session) async {
        await repository.updateSession(session);
        return Right(
          AuthTokens(
            refreshToken: session.refreshToken,
            accessToken: tokenService.generateAccessToken(
              TokenPayload(userId: session.userId, sessionId: session.id),
            ),
          ),
        );
      },
    );
  }
}
