import 'package:dle_server/kernel/infrastructure/services/token/jwt_client.dart';
import 'package:ruta/ruta.dart';

extension RequestExtension on Request {
  TokenPayload get payload {
    final TokenPayload? userId = context['payload'] as TokenPayload?;

    if (userId == null) {
      throw const ApiException.unauthorized(
        'Tried to get userId from request without authentication middleware.',
      );
    }

    return userId;
  }

  String? get ip {
    return connectionInfo.remoteAddress.address;
  }

  String? get userAgent {
    final userAgent = headers['User-Agent'];

    if (userAgent is String) {
      return userAgent;
    }
    return null;
  }
}
