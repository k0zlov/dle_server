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
import 'package:dle_server/contexts/auth/application/listeners/integration/dle_invitation_sent_listener.dart'
    as _i681;
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
import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/assets_rest_controller.dart'
    as _i659;
import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/basic_dle_manage_controller.dart'
    as _i243;
import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/basic_dle_manage_socket_controller.dart'
    as _i677;
import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/characters_rest_controller.dart'
    as _i77;
import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/dle_manage_rest_controller.dart'
    as _i46;
import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/dle_manage_socket_controller.dart'
    as _i553;
import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/hints_rest_controller.dart'
    as _i929;
import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/parameters_rest_controller.dart'
    as _i571;
import 'package:dle_server/contexts/dle/adapters/primary/api/exceptions/dle_exceptions_mapper.dart'
    as _i862;
import 'package:dle_server/contexts/dle/adapters/secondary/persistence/basic_dle_repository_drift.dart'
    as _i255;
import 'package:dle_server/contexts/dle/adapters/secondary/persistence/dle_invitations_repository_drift.dart'
    as _i1003;
import 'package:dle_server/contexts/dle/adapters/secondary/persistence/dle_repository_drift.dart'
    as _i588;
import 'package:dle_server/contexts/dle/application/ports/basic_dle_repository_port.dart'
    as _i309;
import 'package:dle_server/contexts/dle/application/ports/dle_invitations_repository_port.dart'
    as _i891;
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart'
    as _i452;
import 'package:dle_server/contexts/dle/application/use_cases/accept_invitation_use_case/accept_invitation_use_case.dart'
    as _i292;
import 'package:dle_server/contexts/dle/application/use_cases/create_asset_use_case/create_asset_use_case.dart'
    as _i610;
import 'package:dle_server/contexts/dle/application/use_cases/create_character_parameter_use_case/create_character_parameter_use_case.dart'
    as _i828;
import 'package:dle_server/contexts/dle/application/use_cases/create_character_use_case/create_character_use_case.dart'
    as _i861;
import 'package:dle_server/contexts/dle/application/use_cases/create_dle_use_case/create_dle_use_case.dart'
    as _i746;
import 'package:dle_server/contexts/dle/application/use_cases/create_hint_use_case/create_hint_use_case.dart'
    as _i1050;
import 'package:dle_server/contexts/dle/application/use_cases/create_parameter_use_case/create_parameter_use_case.dart'
    as _i230;
import 'package:dle_server/contexts/dle/application/use_cases/create_selectable_value_use_case/create_selectable_value_use_case.dart'
    as _i638;
import 'package:dle_server/contexts/dle/application/use_cases/edit_asset_use_case/edit_asset_use_case.dart'
    as _i1039;
import 'package:dle_server/contexts/dle/application/use_cases/edit_character_parameter_use_case/edit_character_parameter_use_case.dart'
    as _i294;
import 'package:dle_server/contexts/dle/application/use_cases/edit_character_use_case/edit_character_use_case.dart'
    as _i84;
import 'package:dle_server/contexts/dle/application/use_cases/edit_dle_use_case/edit_dle_use_case.dart'
    as _i9;
import 'package:dle_server/contexts/dle/application/use_cases/edit_editor_use_case/edit_editor_use_case.dart'
    as _i568;
import 'package:dle_server/contexts/dle/application/use_cases/edit_hint_use_case/edit_hint_use_case.dart'
    as _i537;
import 'package:dle_server/contexts/dle/application/use_cases/edit_parameter_use_case/edit_parameter_use_case.dart'
    as _i363;
import 'package:dle_server/contexts/dle/application/use_cases/edit_selectable_value_use_case/edit_selectable_value_use_case.dart'
    as _i356;
import 'package:dle_server/contexts/dle/application/use_cases/get_basic_dle_use_case/get_basic_dle_use_case.dart'
    as _i522;
import 'package:dle_server/contexts/dle/application/use_cases/get_user_dle_use_case/get_user_dle_use_case.dart'
    as _i571;
import 'package:dle_server/contexts/dle/application/use_cases/invite_editor_use_case/invite_editor_use_case.dart'
    as _i402;
import 'package:dle_server/contexts/dle/application/use_cases/kick_editor_use_case/kick_editor_use_case.dart'
    as _i678;
import 'package:dle_server/contexts/dle/application/use_cases/leave_dle_use_case/leave_dle_use_case.dart'
    as _i543;
import 'package:dle_server/contexts/dle/application/use_cases/manage_character_hint_use_case/manage_character_hint_use_case.dart'
    as _i747;
import 'package:dle_server/contexts/dle/application/use_cases/remove_asset_use_case/remove_asset_use_case.dart'
    as _i345;
import 'package:dle_server/contexts/dle/application/use_cases/remove_character_parameter_use_case/remove_character_parameter_use_case.dart'
    as _i1058;
import 'package:dle_server/contexts/dle/application/use_cases/remove_character_use_case/remove_character_use_case.dart'
    as _i586;
import 'package:dle_server/contexts/dle/application/use_cases/remove_hint_use_case/remove_hint_use_case.dart'
    as _i220;
import 'package:dle_server/contexts/dle/application/use_cases/remove_parameter_use_case/remove_parameter_use_case.dart'
    as _i231;
import 'package:dle_server/contexts/dle/application/use_cases/remove_selectable_value_use_case/remove_selectable_value_use_case.dart'
    as _i969;
import 'package:dle_server/contexts/dle/dle_dependency_container.dart' as _i746;
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
import 'package:dle_server/contexts/profiles/application/use_cases/edit_profile_use_case/edit_profile_use_case.dart'
    as _i274;
import 'package:dle_server/contexts/profiles/application/use_cases/get_current_profile_use_case/get_profile_use_case.dart'
    as _i879;
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
import 'package:dle_server/kernel/application/use_cases/delete_upload_use_case/delete_upload_use_case.dart'
    as _i16;
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
import 'package:dle_server/kernel/infrastructure/web_socket_manager/web_socket_manager.dart'
    as _i434;
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
    final profilesDependencyContainer = _$ProfilesDependencyContainer();
    final dleDependencyContainer = _$DleDependencyContainer();
    final authDependencyContainer = _$AuthDependencyContainer();
    gh.factory<_i647.OpenApiSpec>(() => dependencyContainer.openapiSpec);
    gh.factory<_i974.Logger>(() => dependencyContainer.logger);
    gh.factory<_i576.SmtpServer>(() => dependencyContainer.smtpServer);
    gh.lazySingleton<_i406.AuthExceptionsMapper>(
        () => _i406.AuthExceptionsMapper());
    gh.lazySingleton<_i611.ProfilesExceptionsMapper>(
        () => _i611.ProfilesExceptionsMapper());
    gh.lazySingleton<_i85.UploadsExceptionsMapper>(
        () => _i85.UploadsExceptionsMapper());
    gh.lazySingletonAsync<_i780.Database>(() => _i780.Database.create());
    gh.lazySingleton<_i862.DleExceptionsMapper>(
        () => _i862.DleExceptionsMapper());
    gh.lazySingleton<_i434.WebSocketManager>(() => _i434.WebSocketManager());
    gh.factory<_i295.JwtClient>(
      () => dependencyContainer.accessJwtClient,
      instanceName: 'accessJwtClient',
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
      () => dependencyContainer
          .acceptInvitationUrl(gh<String>(instanceName: 'websiteUrl')),
      instanceName: 'acceptInvitationUrl',
    );
    gh.factory<String>(
      () => dependencyContainer.uploadsBaseDirectory,
      instanceName: 'uploadsBaseDirectory',
    );
    gh.factory<_i434.WebSocketManager>(
      () => dleDependencyContainer.dleManageWsManager,
      instanceName: 'dleContext',
    );
    gh.factory<List<_i1056.IntegrationEventListener<_i839.IntegrationEvent>>>(
      () => dleDependencyContainer.integrationListeners(),
      instanceName: 'dleContext',
    );
    gh.lazySingleton<_i287.DomainEventBus>(
      () => dleDependencyContainer.domainEventBus(),
      instanceName: 'dleContext',
    );
    gh.lazySingleton<_i705.ImageService>(() => const _i705.ImageServiceImpl());
    gh.factory<String>(
      () => dependencyContainer
          .passwordResetUrl(gh<String>(instanceName: 'websiteUrl')),
      instanceName: 'passwordResetUrl',
    );
    gh.lazySingletonAsync<_i452.DleRepositoryPort>(() async =>
        _i588.DleRepositoryDrift(db: await getAsync<_i780.Database>()));
    gh.lazySingletonAsync<_i9.EditDleUseCase>(() async => _i9.EditDleUseCase(
          repository: await getAsync<_i452.DleRepositoryPort>(),
          eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
        ));
    gh.lazySingletonAsync<_i678.KickEditorUseCase>(
        () async => _i678.KickEditorUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i568.EditEditorUseCase>(
        () async => _i568.EditEditorUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i543.LeaveDleUseCase>(
        () async => _i543.LeaveDleUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i861.CreateCharacterUseCase>(
        () async => _i861.CreateCharacterUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i586.RemoveCharacterUseCase>(
        () async => _i586.RemoveCharacterUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i84.EditCharacterUseCase>(
        () async => _i84.EditCharacterUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i1050.CreateHintUseCase>(
        () async => _i1050.CreateHintUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i537.EditHintUseCase>(
        () async => _i537.EditHintUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i220.RemoveHintUseCase>(
        () async => _i220.RemoveHintUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i747.ManageCharacterHintUseCase>(
        () async => _i747.ManageCharacterHintUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i891.DleInvitationsRepositoryPort>(() async =>
        _i1003.DleInvitationsRepositoryDrift(
            db: await getAsync<_i780.Database>()));
    gh.lazySingletonAsync<_i309.BasicDleRepositoryPort>(() async =>
        _i255.BasicDleRepositoryDrift(db: await getAsync<_i780.Database>()));
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
    gh.lazySingletonAsync<_i571.GetUserDleUseCase>(() async =>
        _i571.GetUserDleUseCase(
            repository: await getAsync<_i452.DleRepositoryPort>()));
    gh.lazySingletonAsync<_i765.EmailCodesRepositoryPort>(() async =>
        _i865.EmailCodesRepositoryDrift(db: await getAsync<_i780.Database>()));
    gh.lazySingletonAsync<_i747.ProfilesRepositoryPort>(() async =>
        _i564.ProfilesRepositoryDrift(db: await getAsync<_i780.Database>()));
    gh.lazySingleton<_i601.AuthMiddleware>(
        () => _i601.AuthMiddleware(tokenService: gh<_i665.TokenService>()));
    gh.lazySingletonAsync<_i681.DleInvitationSentListener>(() async =>
        _i681.DleInvitationSentListener(
          repository: await getAsync<_i221.UsersRepositoryPort>(),
          mailService: gh<_i44.MailService>(),
          acceptInvitationUrl: gh<String>(instanceName: 'acceptInvitationUrl'),
        ));
    gh.lazySingletonAsync<_i553.DleManageSocketController>(
        () async => _i553.DleManageSocketController(
              mapper: gh<_i862.DleExceptionsMapper>(),
              wsManager: gh<_i434.WebSocketManager>(instanceName: 'dleContext'),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
              getUserDleUseCase: await getAsync<_i571.GetUserDleUseCase>(),
            )..init());
    gh.lazySingletonAsync<_i677.BasicDleManageSocketController>(
        () async => _i677.BasicDleManageSocketController(
              mapper: gh<_i862.DleExceptionsMapper>(),
              wsManager: gh<_i434.WebSocketManager>(instanceName: 'dleContext'),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
              getUserDleUseCase: await getAsync<_i571.GetUserDleUseCase>(),
            )..init());
    gh.lazySingletonAsync<_i546.SendEmailCodeUseCase>(
        () async => _i546.SendEmailCodeUseCase(
              repository: await getAsync<_i221.UsersRepositoryPort>(),
              emailCodesRepository:
                  await getAsync<_i765.EmailCodesRepositoryPort>(),
              mailService: gh<_i44.MailService>(),
            ));
    gh.lazySingletonAsync<_i522.GetBasicDleUseCase>(
        () async => _i522.GetBasicDleUseCase(
              repository: await getAsync<_i309.BasicDleRepositoryPort>(),
              dleRepository: await getAsync<_i452.DleRepositoryPort>(),
            ));
    gh.lazySingletonAsync<_i746.CreateDleUseCase>(() async =>
        _i746.CreateDleUseCase(
          repository: await getAsync<_i452.DleRepositoryPort>(),
          basicDleRepository: await getAsync<_i309.BasicDleRepositoryPort>(),
          eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
        ));
    gh.lazySingleton<_i779.UploadsStoragePort>(() => _i945.LocalUploadsStorage(
        basePath: gh<String>(instanceName: 'uploadsBaseDirectory')));
    gh.lazySingletonAsync<_i230.CreateParameterUseCase>(
        () async => _i230.CreateParameterUseCase(
              dleRepository: await getAsync<_i452.DleRepositoryPort>(),
              repository: await getAsync<_i309.BasicDleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i231.RemoveParameterUseCase>(
        () async => _i231.RemoveParameterUseCase(
              dleRepository: await getAsync<_i452.DleRepositoryPort>(),
              repository: await getAsync<_i309.BasicDleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i638.CreateSelectableValueUseCase>(
        () async => _i638.CreateSelectableValueUseCase(
              dleRepository: await getAsync<_i452.DleRepositoryPort>(),
              repository: await getAsync<_i309.BasicDleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i356.EditSelectableValueUseCase>(
        () async => _i356.EditSelectableValueUseCase(
              dleRepository: await getAsync<_i452.DleRepositoryPort>(),
              repository: await getAsync<_i309.BasicDleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i969.RemoveSelectableValueUseCase>(
        () async => _i969.RemoveSelectableValueUseCase(
              dleRepository: await getAsync<_i452.DleRepositoryPort>(),
              repository: await getAsync<_i309.BasicDleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i109.SaveUploadUseCase>(
        () async => _i109.SaveUploadUseCase(
              storage: gh<_i779.UploadsStoragePort>(),
              repository: await getAsync<_i262.UploadsRepositoryPort>(),
            ));
    gh.lazySingletonAsync<_i16.DeleteUploadUseCase>(
        () async => _i16.DeleteUploadUseCase(
              storage: gh<_i779.UploadsStoragePort>(),
              repository: await getAsync<_i262.UploadsRepositoryPort>(),
            ));
    gh.lazySingletonAsync<_i792.ConfirmEmailUseCase>(
        () async => _i792.ConfirmEmailUseCase(
              repository: await getAsync<_i221.UsersRepositoryPort>(),
              emailCodesRepository:
                  await getAsync<_i765.EmailCodesRepositoryPort>(),
            ));
    gh.lazySingletonAsync<_i363.EditParameterUseCase>(
        () async => _i363.EditParameterUseCase(
              repository: await getAsync<_i309.BasicDleRepositoryPort>(),
              dleRepository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i828.CreateCharacterParameterUseCase>(
        () async => _i828.CreateCharacterParameterUseCase(
              repository: await getAsync<_i309.BasicDleRepositoryPort>(),
              dleRepository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i294.EditCharacterParameterUseCase>(
        () async => _i294.EditCharacterParameterUseCase(
              repository: await getAsync<_i309.BasicDleRepositoryPort>(),
              dleRepository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i1058.RemoveCharacterParameterUseCase>(
        () async => _i1058.RemoveCharacterParameterUseCase(
              repository: await getAsync<_i309.BasicDleRepositoryPort>(),
              dleRepository: await getAsync<_i452.DleRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i274.EditProfileUseCase>(
        () async => _i274.EditProfileUseCase(
              repository: await getAsync<_i747.ProfilesRepositoryPort>(),
              saveUploadUseCase: await getAsync<_i109.SaveUploadUseCase>(),
              deleteUploadUseCase: await getAsync<_i16.DeleteUploadUseCase>(),
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
    gh.lazySingletonAsync<_i77.CharactersRestController>(
        () async => _i77.CharactersRestController(
              createCharacterUseCase:
                  await getAsync<_i861.CreateCharacterUseCase>(),
              editCharacterUseCase: await getAsync<_i84.EditCharacterUseCase>(),
              removeCharacterUseCase:
                  await getAsync<_i586.RemoveCharacterUseCase>(),
              mapper: gh<_i862.DleExceptionsMapper>(),
            ));
    gh.lazySingletonAsync<_i929.HintsRestController>(
        () async => _i929.HintsRestController(
              mapper: gh<_i862.DleExceptionsMapper>(),
              createHintUseCase: await getAsync<_i1050.CreateHintUseCase>(),
              editHintUseCase: await getAsync<_i537.EditHintUseCase>(),
              removeHintUseCase: await getAsync<_i220.RemoveHintUseCase>(),
              manageCharacterHintUseCase:
                  await getAsync<_i747.ManageCharacterHintUseCase>(),
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
    gh.lazySingletonAsync<_i292.AcceptInvitationUseCase>(
        () async => _i292.AcceptInvitationUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              invitationsRepository:
                  await getAsync<_i891.DleInvitationsRepositoryPort>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
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
    gh.lazySingletonAsync<_i610.CreateAssetUseCase>(
        () async => _i610.CreateAssetUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              saveUploadUseCase: await getAsync<_i109.SaveUploadUseCase>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.factoryAsync<_i287.DomainEventBus>(
      () async => authDependencyContainer
          .domainEventBus(await getAsync<_i689.UserRegisteredDomainListener>()),
      instanceName: 'authContext',
    );
    gh.lazySingletonAsync<_i658.UserRegisteredProfileListener>(() async =>
        _i658.UserRegisteredProfileListener(
            repository: await getAsync<_i747.ProfilesRepositoryPort>()));
    gh.lazySingletonAsync<_i1039.EditAssetUseCase>(
        () async => _i1039.EditAssetUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              saveUploadUseCase: await getAsync<_i109.SaveUploadUseCase>(),
              deleteUploadUseCase: await getAsync<_i16.DeleteUploadUseCase>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i345.RemoveAssetUseCase>(
        () async => _i345.RemoveAssetUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              saveUploadUseCase: await getAsync<_i109.SaveUploadUseCase>(),
              deleteUploadUseCase: await getAsync<_i16.DeleteUploadUseCase>(),
              eventBus: gh<_i287.DomainEventBus>(instanceName: 'dleContext'),
            ));
    gh.lazySingletonAsync<_i879.SetUpProfileUseCase>(
        () async => _i879.SetUpProfileUseCase(
              repository: await getAsync<_i747.ProfilesRepositoryPort>(),
              saveUploadUseCase: await getAsync<_i109.SaveUploadUseCase>(),
            ));
    gh.lazySingletonAsync<_i879.GetProfileUseCase>(
        () async => _i879.GetProfileUseCase(
              repository: await getAsync<_i747.ProfilesRepositoryPort>(),
              saveUploadUseCase: await getAsync<_i109.SaveUploadUseCase>(),
            ));
    gh.lazySingletonAsync<_i571.ParametersRestController>(() async =>
        _i571.ParametersRestController(
          mapper: gh<_i862.DleExceptionsMapper>(),
          createParameterUseCase:
              await getAsync<_i230.CreateParameterUseCase>(),
          editParameterUseCase: await getAsync<_i363.EditParameterUseCase>(),
          removeParameterUseCase:
              await getAsync<_i231.RemoveParameterUseCase>(),
          createSelectableValueUseCase:
              await getAsync<_i638.CreateSelectableValueUseCase>(),
          editSelectableValueUseCase:
              await getAsync<_i356.EditSelectableValueUseCase>(),
          removeSelectableValueUseCase:
              await getAsync<_i969.RemoveSelectableValueUseCase>(),
          createCharacterParameterUseCase:
              await getAsync<_i828.CreateCharacterParameterUseCase>(),
          editCharacterParameterUseCase:
              await getAsync<_i294.EditCharacterParameterUseCase>(),
          removeCharacterParameterUseCase:
              await getAsync<_i1058.RemoveCharacterParameterUseCase>(),
        ));
    gh.lazySingletonAsync<_i264.ProfilesRestController>(
        () async => _i264.ProfilesRestController(
              mapper: gh<_i611.ProfilesExceptionsMapper>(),
              setUpProfileUseCase: await getAsync<_i879.SetUpProfileUseCase>(),
              getProfileUseCase: await getAsync<_i879.GetProfileUseCase>(),
              editProfileUseCase: await getAsync<_i274.EditProfileUseCase>(),
            ));
    gh.factoryAsync<
        List<_i1056.IntegrationEventListener<_i839.IntegrationEvent>>>(
      () async => authDependencyContainer.integrationListeners(
          await getAsync<_i681.DleInvitationSentListener>()),
      instanceName: 'authContext',
    );
    gh.lazySingletonAsync<_i243.BasicDleManageRestController>(
        () async => _i243.BasicDleManageRestController(
              mapper: gh<_i862.DleExceptionsMapper>(),
              getBasicDleUseCase: await getAsync<_i522.GetBasicDleUseCase>(),
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
          await getAsync<
                  List<
                      _i1056.IntegrationEventListener<_i839.IntegrationEvent>>>(
              instanceName: 'authContext'),
          await getAsync<
                  List<
                      _i1056.IntegrationEventListener<_i839.IntegrationEvent>>>(
              instanceName: 'profilesContext'),
        ));
    gh.lazySingletonAsync<_i659.AssetsRestController>(
        () async => _i659.AssetsRestController(
              mapper: gh<_i862.DleExceptionsMapper>(),
              createAssetUseCase: await getAsync<_i610.CreateAssetUseCase>(),
              editAssetUseCase: await getAsync<_i1039.EditAssetUseCase>(),
              removeAssetUseCase: await getAsync<_i345.RemoveAssetUseCase>(),
            ));
    gh.lazySingletonAsync<_i402.InviteEditorUseCase>(
        () async => _i402.InviteEditorUseCase(
              repository: await getAsync<_i452.DleRepositoryPort>(),
              invitationsRepository:
                  await getAsync<_i891.DleInvitationsRepositoryPort>(),
              integrationEventBus: await getAsync<_i287.IntegrationEventBus>(),
            ));
    gh.lazySingletonAsync<_i46.DleManageRestController>(
        () async => _i46.DleManageRestController(
              mapper: gh<_i862.DleExceptionsMapper>(),
              createDleUseCase: await getAsync<_i746.CreateDleUseCase>(),
              getUserDleUseCase: await getAsync<_i571.GetUserDleUseCase>(),
              editDleUseCase: await getAsync<_i9.EditDleUseCase>(),
              inviteEditorUseCase: await getAsync<_i402.InviteEditorUseCase>(),
              acceptInvitationUseCase:
                  await getAsync<_i292.AcceptInvitationUseCase>(),
              kickEditorUseCase: await getAsync<_i678.KickEditorUseCase>(),
              editEditorUseCase: await getAsync<_i568.EditEditorUseCase>(),
              leaveDleUseCase: await getAsync<_i543.LeaveDleUseCase>(),
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

class _$ProfilesDependencyContainer extends _i118.ProfilesDependencyContainer {}

class _$DleDependencyContainer extends _i746.DleDependencyContainer {}

class _$AuthDependencyContainer extends _i218.AuthDependencyContainer {}
