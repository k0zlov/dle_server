part of 'register_dependencies.dart';

Future<void> database() async {
  final Endpoint endpoint = Endpoint(
    host: env(DotEnvKey.databaseHost),
    port: int.tryParse(env(DotEnvKey.databasePort)) ?? 5432,
    database: env(DotEnvKey.databaseName),
    password: env(DotEnvKey.databasePassword),
    username: env(DotEnvKey.databaseUsername),
  );

  final Database database = Database(
    PgDatabase(
      endpoint: endpoint,
      settings: const ConnectionSettings(
        // If you expect to talk to a Postgres database over a public connection,
        // please use SslMode.verifyFull instead.
        sslMode: SslMode.disable,
      ),
      logStatements: true,
    ),
  );

  try {
    await database.customStatement('SELECT 1');
    print('Connected to database.');
  } catch (e) {
    print('Could not connect to database.');
  }

  getIt.registerSingleton<Database>(database);
}
