import 'package:dle_server/shared_kernel/infrastructure/server/api/exceptions/api_exception.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/api/request/request_context.dart';
import 'package:dle_server/shared_kernel/infrastructure/validation/validation_result.dart';
import 'package:dle_server/shared_kernel/infrastructure/validation/validators.dart';
import 'package:drift/drift.dart';

class Parameter<T> {
  const Parameter(
    this.name, {
    this.validators = const [],
  });

  final String name;
  final List<Validator<T>> validators;

  ValidationResult validate(dynamic value) {
    try {
      final T typedValue = const ValueSerializer.defaults().fromJson<T>(value);

      final errors = validators
          .map((validator) => validator(typedValue))
          .where((result) => !result.isValid)
          .expand((result) => result.errors)
          .toList();

      if (errors.isEmpty) {
        return ValidationResult.valid();
      }

      return ValidationResult.invalid(errors);
    } catch (e) {
      return ValidationResult.invalid(['Invalid type provided for $name']);
    }
  }
}

Future<void> validateRequest({
  required RequestContext context,
  required Set<Parameter<Object>> body,
  required Set<Parameter<Object>> query,
}) async {
  final errors = <String>[];

  if (body.isNotEmpty) {
    final Map<String, dynamic> bodyParams = await context.params.body;

    for (final Parameter<Object> parameter in body) {
      final dynamic value = bodyParams[parameter.name];

      if (value == null) {
        errors.add('Body parameter "${parameter.name}" was not provided.');
        continue;
      }

      final result = parameter.validate(value);
      if (!result.isValid) {
        errors.addAll(
          result.errors.map((e) => 'Body parameter "${parameter.name}": $e'),
        );
      }
    }
  }

  if (query.isNotEmpty) {
    final Map<String, dynamic> queryParams = context.params.query;

    for (final Parameter<Object> parameter in query) {
      final dynamic value = queryParams[parameter.name];

      if (value == null) {
        errors.add('Query parameter "${parameter.name}" was not provided.');
        continue;
      }

      final result = parameter.validate(value);
      if (!result.isValid) {
        errors.addAll(
          result.errors.map((e) => 'Query parameter "${parameter.name}": $e'),
        );
      }
    }
  }

  if (errors.isNotEmpty) {
    throw ApiException.badRequest(
      'Request validation failed.',
      errors: errors,
    );
  }
}
