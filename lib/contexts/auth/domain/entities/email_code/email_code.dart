import 'dart:math';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/auth/domain/exceptions/auth_exceptions.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'email_code.mapper.dart';

@MappableClass()
class EmailCode extends Entity with EmailCodeMappable {
  EmailCode({
    super.id,
    required this.userId,
    required this.code,
    required this.isSuccess,
    required this.expiresAt,
    required this.updatedAt,
    required this.createdAt,
  });

  EmailCode.create({required this.userId})
    : isSuccess = false,
      code = (Random().nextInt(900000) + 100000).toString(),
      expiresAt = DateTime.now().add(const Duration(minutes: 10)),
      updatedAt = DateTime.now(),
      createdAt = DateTime.now();

  final String userId;
  final String code;
  final bool isSuccess;
  final DateTime expiresAt;
  final DateTime updatedAt;
  final DateTime createdAt;

  bool get isExpired => DateTime.now().isAfter(expiresAt);

  EmailCode verify(String code) {
    if (isSuccess) {
      throw EmailCodeAlreadyVerified();
    }

    if (code != this.code || isExpired) {
      throw InvalidEmailCodeException();
    }

    return copyWith(isSuccess: true, updatedAt: DateTime.now());
  }
}
