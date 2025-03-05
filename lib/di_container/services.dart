part of 'register_dependencies.dart';

void _services() {
  getIt.registerLazySingleton<TokenService>(
    () => TokenServiceImpl(
      refreshClient: JwtClient(
        secretKey: SecretKey(env(DotEnvKey.refreshTokenSecret)),
        expiresIn: Duration(
          days: int.parse(env(DotEnvKey.refreshTokenValidityDays)),
        ),
      ),
      accessClient: JwtClient(
        secretKey: SecretKey(env(DotEnvKey.accessTokenSecret)),
        expiresIn: Duration(
          minutes: int.parse(env(DotEnvKey.accessTokenValidityMinutes)),
        ),
      ),
    ),
  );
}
