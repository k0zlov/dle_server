import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';

class TokenPayload {
  const TokenPayload({required this.userId, required this.sessionId});

  factory TokenPayload.fromMap(Map<String, dynamic> map) {
    return TokenPayload(
      userId: map['userId'] as String,
      sessionId: map['sessionId'] as String,
    );
  }

  final String userId;
  final String sessionId;

  Map<String, dynamic> toMap() {
    return {'userId': userId, 'sessionId': sessionId};
  }
}

class JwtClient {
  /// Constructs a [JwtClient] with a given [secretKey] and [expiresIn] duration.
  const JwtClient({required this.secretKey, required this.expiresIn});

  /// The secret key used to sign and verify JWT tokens.
  final SecretKey secretKey;

  /// The duration for which the token will be valid.
  final Duration expiresIn;

  String generateToken(TokenPayload payload) {
    final DateTime expiringDate = DateTime.now().add(expiresIn);
    final int exp = expiringDate.millisecondsSinceEpoch ~/ 1000;

    final jwt = JWT(payload.toMap().copyWith({'exp': exp}));
    return jwt.sign(secretKey);
  }

  TokenPayload? getPayloadFromToken(String token) {
    final bool isValid = validateToken(token);

    if (!isValid) return null;

    try {
      final jwt = JWT.decode(token);

      final rawPayload = jwt.payload as Map<String, dynamic>;
      final TokenPayload payload = TokenPayload.fromMap(rawPayload);
      return payload;
    } catch (e) {
      return null;
    }
  }

  /// Validates the given JWT token.
  ///
  /// Returns `true` if the token is valid, otherwise `false`.
  bool validateToken(String token) {
    try {
      JWT.verify(token, secretKey);
      return true;
    } catch (e) {
      return false;
    }
  }
}
