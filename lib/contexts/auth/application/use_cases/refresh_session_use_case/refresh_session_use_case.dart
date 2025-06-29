import 'package:dle_server/contexts/auth/application/exceptions/auth_exceptions.dart';
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
    implements UseCase<AuthTokens, RefreshSessionParams> {
  const RefreshSessionUseCase({
    required this.repository,
    required this.tokenService,
  });

  final UsersRepositoryPort repository;
  final TokenService tokenService;

  @override
  Future<AuthTokens> call(RefreshSessionParams params) async {
    final AuthSession? foundSession = await repository.findSession(
      token: params.refreshToken,
    );

    if (foundSession == null) {
      throw SessionNotFoundException();
    }

    final session = foundSession.refresh(
      token: params.refreshToken,
      ip: params.ip,
      deviceInfo: params.deviceInfo,
    );

    await repository.updateSession(session);

    return AuthTokens(
      refreshToken: session.refreshToken,
      accessToken: tokenService.generateAccessToken(
        TokenPayload(userId: session.userId, sessionId: session.id),
      ),
    );
  }
}
