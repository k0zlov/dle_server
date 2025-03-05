import 'package:dotenv/dotenv.dart';

final DotEnv env = DotEnv(includePlatformEnvironment: true)..load();

enum DotEnvKey {
  accessTokenSecret('ACCESS_TOKEN_SECRET'),
  refreshTokenSecret('REFRESH_TOKEN_SECRET'),
  accessTokenValidityMinutes('REFRESH_TOKEN_VALIDITY_MINUTES'),
  refreshTokenValidityDays('REFRESH_TOKEN_VALIDITY_DAYS'),
  databaseHost('DATABASE_HOST'),
  databaseName('DATABASE_NAME'),
  databasePassword('DATABASE_PASSWORD'),
  databasePort('DATABASE_PORT'),
  databaseUsername('DATABASE_USERNAME');

  const DotEnvKey(this.name);

  final String name;
}

extension DotEnvExtension on DotEnv {
  String call(DotEnvKey key) {
    final String name = key.name;

    if (!isDefined(name)) {
      throw Exception('Environment variable was not defined: $name');
    }

    return getOrElse(name, () => '');
  }
}
