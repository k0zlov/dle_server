// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dle_server/contexts/auth/adapters/primary/api/controllers/auth_controller.dart'
    as _i685;
import 'package:dle_server/contexts/auth/adapters/secondary/persistence/users_repository_drift.dart'
    as _i558;
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart'
    as _i221;
import 'package:dle_server/contexts/auth/application/use_cases/login_use_case/login_use_case.dart'
    as _i924;
import 'package:dle_server/contexts/auth/application/use_cases/refresh_session_use_case/refresh_session_use_case.dart'
    as _i277;
import 'package:dle_server/contexts/auth/application/use_cases/register_use_case/register_use_case.dart'
    as _i288;
import 'package:dle_server/contexts/auth/application/use_cases/revoke_all_sessions_use_case/revoke_all_sessions_use_case.dart'
    as _i540;
import 'package:dle_server/contexts/auth/application/use_cases/revoke_session_use_case/revoke_session_use_case.dart'
    as _i102;
import 'package:dle_server/di/di_container.dart' as _i432;
import 'package:dle_server/kernel/adapters/primary/api/middlewares/auth_middleware.dart'
    as _i601;
import 'package:dle_server/kernel/infrastructure/database/database.dart'
    as _i780;
import 'package:dle_server/kernel/infrastructure/services/token/jwt_client.dart'
    as _i295;
import 'package:dle_server/kernel/infrastructure/services/token/token_service.dart'
    as _i665;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:ruta/open_api.dart' as _i647;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dependencyContainer = _$DependencyContainer();
    gh.factory<_i647.OpenApiSpec>(() => dependencyContainer.openapiSpec);
    gh.factory<_i974.Logger>(() => dependencyContainer.logger);
    gh.lazySingletonAsync<_i780.Database>(() => _i780.Database.create());
    gh.factory<_i295.JwtClient>(
      () => dependencyContainer.accessJwtClient,
      instanceName: 'accessJwtClient',
    );
    gh.lazySingleton<_i665.TokenService>(() => _i665.TokenServiceImpl(
        accessClient: gh<_i295.JwtClient>(instanceName: 'accessJwtClient')));
    gh.factory<String>(
      () => dependencyContainer.apiVersion,
      instanceName: 'apiVersion',
    );
    gh.lazySingletonAsync<_i221.UsersRepositoryPort>(() async =>
        _i558.UsersRepositoryDrift(db: await getAsync<_i780.Database>()));
    gh.lazySingleton<_i601.AuthMiddleware>(
        () => _i601.AuthMiddleware(tokenService: gh<_i665.TokenService>()));
    gh.lazySingletonAsync<_i924.LoginUseCase>(() async => _i924.LoginUseCase(
          repository: await getAsync<_i221.UsersRepositoryPort>(),
          tokenService: gh<_i665.TokenService>(),
        ));
    gh.lazySingletonAsync<_i277.RefreshSessionUseCase>(
        () async => _i277.RefreshSessionUseCase(
              repository: await getAsync<_i221.UsersRepositoryPort>(),
              tokenService: gh<_i665.TokenService>(),
            ));
    gh.lazySingletonAsync<_i288.RegisterUseCase>(() async =>
        _i288.RegisterUseCase(
            repository: await getAsync<_i221.UsersRepositoryPort>()));
    gh.lazySingletonAsync<_i102.RevokeSessionUseCase>(() async =>
        _i102.RevokeSessionUseCase(
            repository: await getAsync<_i221.UsersRepositoryPort>()));
    gh.lazySingletonAsync<_i540.RevokeAllSessionsUseCase>(() async =>
        _i540.RevokeAllSessionsUseCase(
            repository: await getAsync<_i221.UsersRepositoryPort>()));
    gh.lazySingletonAsync<_i685.AuthController>(() async =>
        _i685.AuthController(
          registerUseCase: await getAsync<_i288.RegisterUseCase>(),
          loginUseCase: await getAsync<_i924.LoginUseCase>(),
          refreshSessionUseCase: await getAsync<_i277.RefreshSessionUseCase>(),
          revokeSessionUseCase: await getAsync<_i102.RevokeSessionUseCase>(),
          revokeAllSessionsUseCase:
              await getAsync<_i540.RevokeAllSessionsUseCase>(),
        ));
    return this;
  }
}

class _$DependencyContainer extends _i432.DependencyContainer {}
