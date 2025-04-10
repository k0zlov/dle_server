import 'package:dart_mappable/dart_mappable.dart';

part 'auth_tokens.mapper.dart';

@MappableClass()
class AuthTokens with AuthTokensMappable {
  const AuthTokens({required this.refreshToken, required this.accessToken});

  final String refreshToken;
  final String accessToken;
}
