import 'package:shelfster/shelfster.dart';

extension ContextExtension on RequestContext {
  String get userId {
    final String? userId = request.context['userId'] as String?;

    if (userId == null) {
      throw const ApiException.unauthorized();
    }

    return userId;
  }
}
