import 'package:dle_server/kernel/infrastructure/services/token/jwt_client.dart';
import 'package:injectable/injectable.dart';

/// Interface for a token service.
abstract interface class TokenService {
  /// Generates an access token for the specified payload.
  String generateAccessToken(TokenPayload payload);

  /// Validates the provided access token.
  bool validateAccessToken(String token);

  /// Retrieves the payload from the provided access token.
  TokenPayload? getPayloadFromAccessToken(String token);
}

@LazySingleton(as: TokenService)
class TokenServiceImpl implements TokenService {
  const TokenServiceImpl({
    @Named('accessJwtClient') required this.accessClient,
  });

  final JwtClient accessClient;

  @override
  String generateAccessToken(TokenPayload payload) {
    return accessClient.generateToken(payload);
  }

  @override
  TokenPayload? getPayloadFromAccessToken(String token) {
    return accessClient.getPayloadFromToken(token);
  }

  @override
  bool validateAccessToken(String token) {
    return accessClient.validateToken(token);
  }
}
