import 'package:dotenv/dotenv.dart';

/// A singleton instance of DotEnv used for loading and accessing environment variables.
final DotEnv env = DotEnv(includePlatformEnvironment: true)..load(['.env']);

/// Enum representing all the keys used for environment variables.
///
/// Each key maps to a corresponding environment variable in the `.env` file or
/// system environment. This enum ensures type safety and avoids typos when
/// accessing environment variables.
enum DotEnvKey {
  /// Represents the application version.
  version('VERSION'),

  /// Indicates whether the application is running in test mode.
  testLogs('TEST_LOGS'),

  /// Secret used for signing access tokens.
  accessTokenSecret('ACCESS_TOKEN_SECRET'),

  /// Validity duration of an access token in minutes.
  accessTokenValidityMinutes('ACCESS_TOKEN_VALIDITY_MINUTES'),

  /// Host for the production database.
  databaseHost('DATABASE_HOST'),

  /// Name of the production database.
  databaseName('DATABASE_NAME'),

  /// Password for the production database.
  databasePassword('DATABASE_PASSWORD'),

  /// Port for the production database.
  databasePort('DATABASE_PORT'),

  /// Username for the production database.
  databaseUsername('DATABASE_USERNAME');

  /// The name of the environment variable this key corresponds to.
  const DotEnvKey(this.name);

  /// The key name as a string.
  final String name;
}

bool isTestLogs() {
  return env(DotEnvKey.testLogs) == 'true';
}

/// Extension on [DotEnv] to simplify access to environment variables using [DotEnvKey].
///
/// Provides a callable syntax to retrieve the value of the environment variable
/// associated with a given [DotEnvKey].
extension DotEnvExtension on DotEnv {
  /// Retrieves the value of the environment variable associated with [key].
  ///
  /// Throws an exception if the variable is not defined in the environment.
  ///
  /// Example:
  /// ```dart
  /// final version = env(DotEnvKey.version);
  /// ```
  String call(DotEnvKey key) {
    final String name = key.name;

    if (!isDefined(name)) {
      throw Exception('Environment variable was not defined: $name');
    }

    return getOrElse(name, () => '');
  }
}
