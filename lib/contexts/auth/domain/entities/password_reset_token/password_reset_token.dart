import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/auth/domain/exceptions/auth_exceptions.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'password_reset_token.mapper.dart';

@MappableClass()
class PasswordResetToken extends Entity with PasswordResetTokenMappable {
  PasswordResetToken({
    super.id,
    required this.userId,
    required this.expiresAt,
    required this.updatedAt,
    required this.createdAt,
    required this.isUsed,
  });

  PasswordResetToken.create({required this.userId})
    : isUsed = false,
      expiresAt = DateTime.now().add(const Duration(minutes: 10)),
      updatedAt = DateTime.now(),
      createdAt = DateTime.now();

  final String userId;
  final bool isUsed;
  final DateTime expiresAt;
  final DateTime updatedAt;
  final DateTime createdAt;

  bool get isExpired => expiresAt.isBefore(DateTime.now());

  PasswordResetToken use() {
    if (isExpired) {
      throw InvalidPasswordResetTokenException();
    }

    if (isUsed) {
      throw InvalidPasswordResetTokenException();
    }

    return copyWith(isUsed: true, updatedAt: DateTime.now());
  }
}
