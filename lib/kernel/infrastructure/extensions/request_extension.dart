import 'package:ruta/ruta.dart';

extension RequestExtension on Request {
  int get userId {
    final int? userId = context['userId'] as int?;

    if (userId == null) {
      throw const ApiException.unauthorized();
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
