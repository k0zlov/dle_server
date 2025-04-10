import 'package:dle_server/kernel/infrastructure/services/token/jwt_client.dart';
import 'package:dle_server/kernel/infrastructure/services/token/token_service.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@LazySingleton()
class AuthMiddleware extends Middleware {
  AuthMiddleware({required this.tokenService});

  final TokenService tokenService;

  @override
  Handler call(Handler handler) {
    return (Request request) async {
      final authorizationHeader = request.headers['Authorization'];

      if (authorizationHeader == null) {
        throw const ApiException.unauthorized();
      }

      final parts = authorizationHeader.split(' ');

      if (parts.length != 2 || parts.first != 'Bearer') {
        throw const ApiException.unauthorized();
      }

      final String token = parts.last;
      final TokenPayload? payload = tokenService.getPayloadFromAccessToken(
        token,
      );

      if (payload == null) {
        throw const ApiException.unauthorized();
      }

      final newRequest = request.copyWith(
        context: {...request.context, 'payload': payload},
      );

      return handler(newRequest);
    };
  }
}
