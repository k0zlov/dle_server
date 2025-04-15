import 'package:ruta/ruta.dart';

typedef ExceptionsMapping = Map<Type, ApiException>;

abstract class ExceptionsMapper {
  ExceptionsMapping get mapping;

  ApiException call(Object e) {
    if (e is! Exception) throw e;

    final ApiException? exception = mapping[e.runtimeType];
    if (exception != null) {
      return exception;
    }
    throw e;
  }
}
