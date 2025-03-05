import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dle_server/shared_kernel/infrastructure/extensions/enum_extension.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/exceptions/api_exception.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/request/http_method.dart';
import 'package:shelf/shelf.dart';

part 'request_parameters.dart';

class RequestContext {
  RequestContext(this._request, this.routePattern) {
    params = RequestParameters(
      query: uri.queryParameters,
      uriSegments: url.pathSegments,
      routePattern: routePattern,
      body: _json(),
    );
  }

  final String routePattern;

  late final RequestParameters params;

  Request _request;

  Uri get url => _request.url;

  Uri get uri => _request.requestedUri;

  Map<String, String> get headers => _request.headers;

  HttpMethod get method => HttpMethod.values.fromName(_request.method);

  bool get isSocketConnection => _request.headers['Upgrade'] == 'websocket';

  String? get ip {
    final forwardedFor = _request.headers['X-Forwarded-For'];
    if (forwardedFor != null && forwardedFor.isNotEmpty) {
      return forwardedFor;
    }
    final connectionInfo = _request.context['shelf.io.connection_info'];
    if (connectionInfo is HttpConnectionInfo) {
      return connectionInfo.remoteAddress.address;
    }
    return null;
  }

  String? get deviceName => _request.headers['User-Agent'];

  String? get bearer {
    final value = _request.headers['Authorization']?.split(' ');

    if (value != null && value.length == 2 && value.first == 'Bearer') {
      return value.last;
    }

    return null;
  }

  Map<String, String>? cookies() {
    final cookieString = _request.headers['Cookie'];
    if (cookieString == null) return null;

    final cookiesEntries = cookieString.split('; ').map((cookie) {
      final [key, value] = cookie.split('=');
      return MapEntry(key, value);
    });

    return Map.fromEntries(cookiesEntries);
  }

  Future<String> _body() async {
    const requestBodyKey = 'dle.request.body';
    final bodyFromContext =
        _request.context[requestBodyKey] as Completer<String>?;
    if (bodyFromContext != null) return bodyFromContext.future;

    final completer = Completer<String>();
    try {
      _request = _request.change(
        context: {..._request.context, requestBodyKey: completer},
      );
      completer.complete(await _request.readAsString());
    } catch (error, stackTrace) {
      completer.completeError(error, stackTrace);
    }
    return completer.future;
  }

  Future<Map<String, dynamic>> _json() async {
    final String body = await _body();

    if (body.isEmpty) return {};

    final dynamic json = jsonDecode(await _body());
    try {
      json as Map<String, dynamic>;
    } catch (e) {
      throw const ApiException.badRequest('Invalid body data type.');
    }

    return json;
  }
}
