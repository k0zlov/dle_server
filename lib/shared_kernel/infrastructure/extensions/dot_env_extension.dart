import 'package:dotenv/dotenv.dart';

enum DotEnvKey {
  test('123');

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
