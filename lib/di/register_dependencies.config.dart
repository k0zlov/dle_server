// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dle_server/contexts/auth/adapters/primary/api/controllers/auth_controller.dart'
    as _i685;
import 'package:dle_server/contexts/auth/adapters/primary/api/controllers/users_controller.dart'
    as _i36;
import 'package:dle_server/contexts/auth/adapters/primary/api/exceptions/auth_exceptions_mapper.dart'
    as _i406;
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
import 'package:dle_server/contexts/auth/application/use_cases/change_password_use_case/change_password_use_case.dart'
    as _i852;
import 'package:dle_server/contexts/auth/application/use_cases/confirm_email_use_case/confirm_email_use_case.dart'
    as _i792;
import 'package:dle_server/contexts/auth/application/use_cases/forgot_password_use_case/forgot_password_use_case.dart'
    as _i176;
import 'package:dle_server/contexts/auth/application/use_cases/get_current_user_use_case/get_current_user_use_case.dart'
    as _i33;
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
import 'package:dle_server/contexts/auth/application/use_cases/update_user_use_case/update_user_use_case.dart'
    as _i662;
import 'package:dle_server/contexts/auth/auth_dependency_container.dart'
    as _i218;
import 'package:dle_server/contexts/profiles/adapters/primary/api/controllers/profiles_rest_controller.dart'
    as _i264;
import 'package:dle_server/contexts/profiles/adapters/primary/api/exceptions/profiles_exceptions_mapper.dart'
    as _i611;
import 'package:dle_server/contexts/profiles/adapters/secondary/persistence/profiles_repository_drift.dart'
    as _i564;
import 'package:dle_server/contexts/profiles/application/listeners/integration/user_registered_listener.dart'
    as _i658;
import 'package:dle_server/contexts/profiles/application/ports/profiles_repository_port.dart'
    as _i747;
import 'package:dle_server/contexts/profiles/application/use_cases/set_up_profile_use_case/set_up_profile_use_case.dart'
    as _i879;
import 'package:dle_server/contexts/profiles/profiles_dependency_container.dart'
    as _i118;
import 'package:dle_server/di/di_container.dart' as _i432;
import 'package:dle_server/kernel/adapters/primary/api/controllers/uploads_rest_controller.dart'
    as _i426;
import 'package:dle_server/kernel/adapters/primary/api/exceptions/uploads_exceptions_mapper.dart'
    as _i85;
import 'package:dle_server/kernel/adapters/primary/api/middlewares/auth_middleware.dart'
    as _i601;
import 'package:dle_server/kernel/adapters/secondary/persistence/uploads_repository_drift.dart'
    as _i60;
import 'package:dle_server/kernel/adapters/secondary/storage/local_uploads_storage.dart'
    as _i945;
import 'package:dle_server/kernel/application/ports/event_bus.dart' as _i287;
import 'package:dle_server/kernel/application/ports/uploads_repository_port.dart'
    as _i262;
import 'package:dle_server/kernel/application/ports/uploads_storage_port.dart'
    as _i779;
import 'package:dle_server/kernel/application/use_cases/get_image_use_case/get_image_use_case.dart'
    as _i344;
import 'package:dle_server/kernel/application/use_cases/save_upload_use_case/save_upload_use_case.dart'
    as _i109;
import 'package:dle_server/kernel/domain/events/events.dart' as _i839;
import 'package:dle_server/kernel/infrastructure/database/database.dart'
    as _i780;
import 'package:dle_server/kernel/infrastructure/events/event_listener.dart'
    as _i1056;
import 'package:dle_server/kernel/infrastructure/services/image/image_service.dart'
    as _i705;
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
    final profilesDependencyContainer = _$ProfilesDependencyContainer();
    gh.factory<_i647.OpenApiSpec>(() => dependencyContainer.openapiSpec);
    gh.factory<_i974.Logger>(() => dependencyContainer.logger);
    gh.factory<_i576.SmtpServer>(() => dependencyContainer.smtpServer);
    gh.lazySingletonAsync<_i780.Database>(() => _i780.Database.create());
    gh.lazySingleton<_i406.AuthExceptionsMapper>(
        () => _i406.AuthExceptionsMapper());
    gh.lazySingleton<_i85.UploadsExceptionsMapper>(
        () => _i85.UploadsExceptionsMapper());
    gh.lazySingleton<_i611.ProfilesExceptionsMapper>(
        () => _i611.ProfilesExceptionsMapper());
    gh.factory<_i295.JwtClient>(
      () => dependencyContainer.accessJwtClient,
      instanceName: 'accessJwtClient',
    );
    gh.factory<List<_i1056.IntegrationEventListener<_i839.IntegrationEvent>>>(
      () => authDependencyContainer.integrationListeners(),
      instanceName: 'authContext',
    );
    gh.lazySingleton<_i665.TokenService>(() => _i665.TokenServiceImpl(
        accessClient: gh<_i295.JwtClient>(instanceName: 'accessJwtClient')));
    gh.factory<_i287.DomainEventBus>(
      () => profilesDependencyContainer.domainEventBus(),
      instanceName: 'profilesContext',
    );
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
      () => dependencyContainer.uploadsBaseDirectory,
      instanceName: 'uploadsBaseDirectory',
    );
    gh.lazySingleton<_i705.ImageService>(() => const _i705.ImageServiceImpl());
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
    gh.lazySingletonAsync<_i262.UploadsRepositoryPort>(() async =>
        _i60.UploadsRepositoryDrift(db: await getAsync<_i780.Database>()));
    gh.lazySingletonAsync<_i765.EmailCodesRepositoryPort>(() async =>
        _i865.EmailCodesRepositoryDrift(db: await getAsync<_i780.Database>()));
    gh.lazySingletonAsync<_i747.ProfilesRepositoryPort>(() async =>
        _i564.ProfilesRepositoryDrift(db: await getAsync<_i780.Database>()));
    gh.lazySingleton<_i601.AuthMiddleware>(
        () => _i601.AuthMiddleware(tokenService: gh<_i665.TokenService>()));
    gh.lazySingletonAsync<_i546.SendEmailCodeUseCase>(
        () async => _i546.SendEmailCodeUseCase(
              repository: await getAsync<_i221.UsersRepositoryPort>(),
              emailCodesRepository:
                  await getAsync<_i765.EmailCodesRepositoryPort>(),
              mailService: gh<_i44.MailService>(),
            ));
    gh.lazySingleton<_i779.UploadsStoragePort>(() => _i945.LocalUploadsStorage(
        basePath: gh<String>(instanceName: 'uploadsBaseDirectory')));
    gh.lazySingletonAsync<_i109.SaveUploadUseCase>(
        () async => _i109.SaveUploadUseCase(
              storage: gh<_i779.UploadsStoragePort>(),
              repository: await getAsync<_i262.UploadsRepositoryPort>(),
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
    gh.lazySingletonAsync<_i852.ChangePasswordUseCase>(() async =>
        _i852.ChangePasswordUseCase(
            repository: await getAsync<_i221.UsersRepositoryPort>()));
    gh.lazySingletonAsync<_i33.GetCurrentUserUseCase>(() async =>
        _i33.GetCurrentUserUseCase(
            repository: await getAsync<_i221.UsersRepositoryPort>()));
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
    gh.lazySingletonAsync<_i658.UserRegisteredProfileListener>(() async =>
        _i658.UserRegisteredProfileListener(
            repository: await getAsync<_i747.ProfilesRepositoryPort>()));
    gh.lazySingletonAsync<_i879.SetUpProfileUseCase>(
        () async => _i879.SetUpProfileUseCase(
              repository: await getAsync<_i747.ProfilesRepositoryPort>(),
              saveUploadUseCase: await getAsync<_i109.SaveUploadUseCase>(),
            ));
    gh.lazySingletonAsync<_i662.UpdateUserUseCase>(() async =>
        _i662.UpdateUserUseCase(
          repository: await getAsync<_i221.UsersRepositoryPort>(),
          sendEmailCodeUseCase: await getAsync<_i546.SendEmailCodeUseCase>(),
        ));
    gh.lazySingletonAsync<_i344.GetImageUseCase>(
        () async => _i344.GetImageUseCase(
              storage: gh<_i779.UploadsStoragePort>(),
              repository: await getAsync<_i262.UploadsRepositoryPort>(),
              imageService: gh<_i705.ImageService>(),
            ));
    gh.lazySingletonAsync<_i264.ProfilesRestController>(
        () async => _i264.ProfilesRestController(
              setUpProfileUseCase: await getAsync<_i879.SetUpProfileUseCase>(),
              mapper: gh<_i611.ProfilesExceptionsMapper>(),
            ));
    gh.lazySingletonAsync<_i36.UsersRestController>(() async =>
        _i36.UsersRestController(
          getCurrentUserUseCase: await getAsync<_i33.GetCurrentUserUseCase>(),
          updateUserUseCase: await getAsync<_i662.UpdateUserUseCase>(),
          changePasswordUseCase: await getAsync<_i852.ChangePasswordUseCase>(),
          mapper: gh<_i406.AuthExceptionsMapper>(),
        ));
    gh.factoryAsync<
        List<_i1056.IntegrationEventListener<_i839.IntegrationEvent>>>(
      () async => profilesDependencyContainer.integrationListeners(
          await getAsync<_i658.UserRegisteredProfileListener>()),
      instanceName: 'profilesContext',
    );
    gh.lazySingletonAsync<_i426.UploadsRestController>(
        () async => _i426.UploadsRestController(
              getImageUseCase: await getAsync<_i344.GetImageUseCase>(),
              mapper: gh<_i85.UploadsExceptionsMapper>(),
            ));
    gh.factoryAsync<_i287.IntegrationEventBus>(() async =>
        dependencyContainer.integrationEventBus(
          gh<List<_i1056.IntegrationEventListener<_i839.IntegrationEvent>>>(
              instanceName: 'authContext'),
          await getAsync<
                  List<
                      _i1056.IntegrationEventListener<_i839.IntegrationEvent>>>(
              instanceName: 'profilesContext'),
        ));
    gh.lazySingletonAsync<_i288.RegisterUseCase>(() async =>
        _i288.RegisterUseCase(
          repository: await getAsync<_i221.UsersRepositoryPort>(),
          integrationEventBus: await getAsync<_i287.IntegrationEventBus>(),
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
          mapper: gh<_i406.AuthExceptionsMapper>(),
        ));
    return this;
  }
}

class _$DependencyContainer extends _i432.DependencyContainer {}

class _$AuthDependencyContainer extends _i218.AuthDependencyContainer {}

class _$ProfilesDependencyContainer extends _i118.ProfilesDependencyContainer {}
