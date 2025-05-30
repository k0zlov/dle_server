import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:drift/drift.dart';
import 'package:ruta/ruta.dart';

/// Middleware for handling errors in request processing.
class ErrorMiddleware extends Middleware {
  @override
  Handler call(Handler handler) {
    return (Request request) async {
      if (request.isSocketConnection) {
        return await handler(request);
      }
      try {
        // Process the request with the inner handler.
        return await handler(request);
      } on ApiException catch (e) {
        // Handle custom API exceptions and return the appropriate response.
        print(e);
        return e.toResponse();
      } on InvalidDataException catch (e) {
        // Handle database-related exceptions and return an internal server error response.
        print(e);
        const ApiException exception = ApiException.internalServerError(
          'Error while communicating with database.',
        );
        return exception.toResponse();
      } catch (e) {
        // Handle any other exceptions and return a generic internal server error response.
        print(e);
        const ApiException exception = ApiException.internalServerError(
          'An error occurred.',
        );
        return exception.toResponse();
      }
    };
  }
}
