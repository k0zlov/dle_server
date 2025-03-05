import 'package:shelf/shelf.dart';

Middleware headersMiddleware(Map<String, String> headers) {
  return createMiddleware(
    responseHandler: (response) {
      // Merge the custom headers with the existing response headers.
      return response.change(
        headers: {
          ...headers,
          ...response.headersAll,
        },
      );
    },
  );
}
