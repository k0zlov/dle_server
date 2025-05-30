import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dle_server/contexts/auth/auth_dependency_container.dart';
import 'package:dle_server/contexts/profiles/profiles_dependency_container.dart';
import 'package:dle_server/kernel/adapters/secondary/event_bus/in_memory_event_bus.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/infrastructure/events/event_listener.dart';
import 'package:dle_server/kernel/infrastructure/extensions/dot_env_extension.dart';
import 'package:dle_server/kernel/infrastructure/logger/loggers.dart';
import 'package:dle_server/kernel/infrastructure/services/token/jwt_client.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:mailer/smtp_server.dart';
import 'package:ruta/open_api.dart';

@module
abstract class DependencyContainer {
  @Named('apiVersion')
  String get apiVersion => env(DotEnvKey.version);

  @Named('websiteUrl')
  String get websiteUrl => env(DotEnvKey.websiteUrl);

  @Named('passwordResetUrl')
  String passwordResetUrl(@Named('websiteUrl') String websiteUrl) =>
      '$websiteUrl/reset-password?token=';

  @Named('acceptInvitationUrl')
  String acceptInvitationUrl(@Named('websiteUrl') String websiteUrl) =>
      '$websiteUrl/accept-invitation?token=';

  @Named('uploadsBaseDirectory')
  String get uploadsBaseDirectory => env(DotEnvKey.uploadsBaseDirectory);

  OpenApiSpec get openapiSpec => OpenApiSpec(
    info: OpenApiInfo(
      version: env(DotEnvKey.version),
      title: 'Dle-Api',
      description: 'No description',
      contact: const OpenApiContact(
        name: 'Ivan Kozlov',
        email: 'ivankozlov0624@gmail.com',
      ),
    ),
  );

  Logger get logger => AppLogger();

  @Named('accessJwtClient')
  JwtClient get accessJwtClient => JwtClient(
    secretKey: SecretKey(env(DotEnvKey.accessTokenSecret)),
    expiresIn: Duration(
      minutes: int.parse(env(DotEnvKey.accessTokenValidityMinutes)),
    ),
  );

  SmtpServer get smtpServer => SmtpServer(
    env(DotEnvKey.smtpHost),
    port: int.parse(env(DotEnvKey.smtpPort)),
    allowInsecure: true,
  );

  @Named('emailUrl')
  String get emailUrl => env(DotEnvKey.emailUrl);

  IntegrationEventBus integrationEventBus(
    @authContext List<IntegrationEventListener> auth,
    @profilesContext List<IntegrationEventListener> profiles,
  ) {
    return InMemoryEventBus(listeners: [...auth, ...profiles]);
  }
}
