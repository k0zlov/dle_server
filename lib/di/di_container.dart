import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
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
}
