import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
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
      final bool isSocketConnection = request.isSocketConnection;

      final String? token;

      if (isSocketConnection) {
        token = request.url.queryParameters['token'];
      } else {
        token = request.headers['Authorization']?.split(' ')[1];
      }

      if (token == null) {
        throw const ApiException.unauthorized();
      }

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
