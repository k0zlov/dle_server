import 'dart:convert';

import 'package:ruta/ruta.dart';

extension FormDataExtension on FormData {
  Map<String, dynamic> getJson() {
    try {
      final String? raw = fields['json'];
      return jsonDecode(raw!) as Map<String, dynamic>;
    } catch (e) {
      throw const ApiException.badRequest(
        'Json field was not provided inside form-data',
      );
    }
  }
}
