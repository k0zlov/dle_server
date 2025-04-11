// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dle_server/contexts/auth/adapters/primary/api/controllers/auth_controller.dart'
    as _i685;
import 'package:dle_server/contexts/auth/adapters/secondary/persistence/email_codes_repository_drift.dart'
    as _i865;
import 'package:dle_server/contexts/auth/adapters/secondary/persistence/password_reset_tokens_repository_drift.dart'
    as _i350;
import 'package:dle_server/contexts/auth/adapters/secondary/persistence/users_repository_drift.dart'
    as _i558;
import 'package:dle_server/contexts/auth/application/listeners/domain/user_registered_listener.dart'
    as _i689;
import 'package:dle_server/contexts/auth/application/ports/email_codes_repository_port.dart'
    as _i765;
import 'package:dle_server/contexts/auth/application/ports/password_reset_tokens_repository_port.dart'
    as _i482;
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart'
    as _i221;
import 'package:dle_server/contexts/auth/application/use_cases/confirm_email_use_case/confirm_email_use_case.dart'
    as _i792;
import 'package:dle_server/contexts/auth/application/use_cases/forgot_password_use_case/forgot_password_use_case.dart'
    as _i176;
import 'package:dle_server/contexts/auth/application/use_cases/login_use_case/login_use_case.dart'
    as _i924;
import 'package:dle_server/contexts/auth/application/use_cases/refresh_session_use_case/refresh_session_use_case.dart'
    as _i277;
import 'package:dle_server/contexts/auth/application/use_cases/register_use_case/register_use_case.dart'
    as _i288;
import 'package:dle_server/contexts/auth/application/use_cases/reset_password_use_case/reset_password_use_case.dart'
    as _i141;
import 'package:dle_server/contexts/auth/application/use_cases/revoke_all_sessions_use_case/revoke_all_sessions_use_case.dart'
    as _i540;
import 'package:dle_server/contexts/auth/application/use_cases/revoke_session_use_case/revoke_session_use_case.dart'
    as _i102;
import 'package:dle_server/contexts/auth/application/use_cases/send_email_code_use_case/send_email_code_use_case.dart'
    as _i546;
import 'package:dle_server/contexts/auth/auth_dependency_container.dart'
    as _i218;
import 'package:dle_server/di/di_container.dart' as _i432;
import 'package:dle_server/kernel/adapters/primary/api/middlewares/auth_middleware.dart'
    as _i601;
import 'package:dle_server/kernel/application/ports/event_bus.dart' as _i287;
import 'package:dle_server/kernel/infrastructure/database/database.dart'
    as _i780;
import 'package:dle_server/kernel/infrastructure/services/mail/mail_service.dart'
    as _i44;
import 'package:dle_server/kernel/infrastructure/services/token/jwt_client.dart'
    as _i295;
import 'package:dle_server/kernel/infrastructure/services/token/token_service.dart'
    as _i665;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:mailer/smtp_server.dart' as _i576;
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
    final authDependencyContainer = _$AuthDependencyContainer();
    gh.factory<_i647.OpenApiSpec>(() => dependencyContainer.openapiSpec);
    gh.factory<_i974.Logger>(() => dependencyContainer.logger);
    gh.factory<_i576.SmtpServer>(() => dependencyContainer.smtpServer);
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
    gh.factory<String>(
      () => dependencyContainer.emailUrl,
      instanceName: 'emailUrl',
    );
    gh.factory<String>(
      () => dependencyContainer.websiteUrl,
      instanceName: 'websiteUrl',
    );
    gh.factory<String>(
      () => dependencyContainer
          .passwordResetUrl(gh<String>(instanceName: 'websiteUrl')),
      instanceName: 'passwordResetUrl',
    );
    gh.lazySingleton<_i44.MailService>(() => _i44.MailServiceImpl(
          smtpServer: gh<_i576.SmtpServer>(),
          emailUrl: gh<String>(instanceName: 'emailUrl'),
        ));
    gh.lazySingletonAsync<_i221.UsersRepositoryPort>(() async =>
        _i558.UsersRepositoryDrift(db: await getAsync<_i780.Database>()));
    gh.lazySingletonAsync<_i482.PasswordResetTokensRepositoryPort>(() async =>
        _i350.PasswordresetTokensRepositoryDrift(
            db: await getAsync<_i780.Database>()));
    gh.lazySingletonAsync<_i141.ResetPasswordUseCase>(
        () async => _i141.ResetPasswordUseCase(
              repository: await getAsync<_i221.UsersRepositoryPort>(),
              passwordResetTokensRepository:
                  await getAsync<_i482.PasswordResetTokensRepositoryPort>(),
            ));
    gh.lazySingletonAsync<_i765.EmailCodesRepositoryPort>(() async =>
        _i865.EmailCodesRepositoryDrift(db: await getAsync<_i780.Database>()));
    gh.lazySingleton<_i601.AuthMiddleware>(
        () => _i601.AuthMiddleware(tokenService: gh<_i665.TokenService>()));
    gh.lazySingletonAsync<_i546.SendEmailCodeUseCase>(
        () async => _i546.SendEmailCodeUseCase(
              repository: await getAsync<_i221.UsersRepositoryPort>(),
              emailCodesRepository:
                  await getAsync<_i765.EmailCodesRepositoryPort>(),
              mailService: gh<_i44.MailService>(),
            ));
    gh.lazySingletonAsync<_i792.ConfirmEmailUseCase>(
        () async => _i792.ConfirmEmailUseCase(
              repository: await getAsync<_i221.UsersRepositoryPort>(),
              emailCodesRepository:
                  await getAsync<_i765.EmailCodesRepositoryPort>(),
            ));
    gh.lazySingletonAsync<_i689.UserRegisteredDomainListener>(() async =>
        _i689.UserRegisteredDomainListener(
            sendEmailCodeUseCase:
                await getAsync<_i546.SendEmailCodeUseCase>()));
    gh.lazySingletonAsync<_i176.ForgotPasswordUseCase>(() async =>
        _i176.ForgotPasswordUseCase(
          repository: await getAsync<_i221.UsersRepositoryPort>(),
          mailService: gh<_i44.MailService>(),
          passwordResetTokensRepository:
              await getAsync<_i482.PasswordResetTokensRepositoryPort>(),
          sendEmailCodeUseCase: await getAsync<_i546.SendEmailCodeUseCase>(),
          passwordResetUrl: gh<String>(instanceName: 'passwordResetUrl'),
        ));
    gh.lazySingletonAsync<_i924.LoginUseCase>(() async => _i924.LoginUseCase(
          repository: await getAsync<_i221.UsersRepositoryPort>(),
          tokenService: gh<_i665.TokenService>(),
        ));
    gh.lazySingletonAsync<_i277.RefreshSessionUseCase>(
        () async => _i277.RefreshSessionUseCase(
              repository: await getAsync<_i221.UsersRepositoryPort>(),
              tokenService: gh<_i665.TokenService>(),
            ));
    gh.lazySingletonAsync<_i540.RevokeAllSessionsUseCase>(() async =>
        _i540.RevokeAllSessionsUseCase(
            repository: await getAsync<_i221.UsersRepositoryPort>()));
    gh.lazySingletonAsync<_i102.RevokeSessionUseCase>(() async =>
        _i102.RevokeSessionUseCase(
            repository: await getAsync<_i221.UsersRepositoryPort>()));
    gh.factoryAsync<_i287.DomainEventBus>(
      () async => authDependencyContainer
          .domainEventBus(await getAsync<_i689.UserRegisteredDomainListener>()),
      instanceName: 'authContext',
    );
    gh.lazySingletonAsync<_i288.RegisterUseCase>(() async =>
        _i288.RegisterUseCase(
          repository: await getAsync<_i221.UsersRepositoryPort>(),
          domainEventBus:
              await getAsync<_i287.DomainEventBus>(instanceName: 'authContext'),
        ));
    gh.lazySingletonAsync<_i685.AuthController>(() async =>
        _i685.AuthController(
          registerUseCase: await getAsync<_i288.RegisterUseCase>(),
          loginUseCase: await getAsync<_i924.LoginUseCase>(),
          refreshSessionUseCase: await getAsync<_i277.RefreshSessionUseCase>(),
          revokeSessionUseCase: await getAsync<_i102.RevokeSessionUseCase>(),
          revokeAllSessionsUseCase:
              await getAsync<_i540.RevokeAllSessionsUseCase>(),
          confirmEmailUseCase: await getAsync<_i792.ConfirmEmailUseCase>(),
          sendEmailCodeUseCase: await getAsync<_i546.SendEmailCodeUseCase>(),
          forgotPasswordUseCase: await getAsync<_i176.ForgotPasswordUseCase>(),
          resetPasswordUseCase: await getAsync<_i141.ResetPasswordUseCase>(),
        ));
    return this;
  }
}

class _$DependencyContainer extends _i432.DependencyContainer {}

class _$AuthDependencyContainer extends _i218.AuthDependencyContainer {}
