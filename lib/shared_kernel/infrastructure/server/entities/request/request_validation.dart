import 'package:dle_server/shared_kernel/infrastructure/server/entities/exceptions/api_exception.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/request/request_context.dart';
import 'package:drift/drift.dart';

class Parameter<T> {
  const Parameter(this.name);

  final String name;

  bool _check(dynamic value) {
    try {
      const ValueSerializer.defaults().fromJson<T>(value);
      return true;
    } catch (e) {
      return false;
    }
  }
}

Future<void> validateRequest({
  required RequestContext context,
  required Set<Parameter<Object>> body,
  required Set<Parameter<Object>> query,
}) async {
  if (body.isNotEmpty) {
    final Map<String, dynamic> bodyParams = await context.params.body;

    for (final Parameter<Object> parameter in body) {
      final dynamic value = bodyParams[parameter.name];

      if (value == null) {
        throw ApiException.badRequest(
          'The body parameter ${parameter.name} was not provided',
        );
      }

      if (parameter._check(value)) return;
      throw ApiException.badRequest(
        'The body parameter ${parameter.name} has an invalid type.',
      );
    }
  }
  if (query.isNotEmpty) {
    final Map<String, dynamic> queryParams = context.params.query;
    for (final Parameter<Object> parameter in query) {
      final dynamic value = queryParams[parameter.name];

      if (value == null) {
        throw ApiException.badRequest(
          'The query parameter ${parameter.name} was not provided',
        );
      }

      if (parameter._check(value)) return;
      throw ApiException.badRequest(
        'The query parameter ${parameter.name} has an invalid type.',
      );
    }
  }
}
