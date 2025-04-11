import 'package:dart_mappable/dart_mappable.dart';
import 'package:dartz/dartz.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'password_reset_token.mapper.dart';

enum PasswordResetTokenError { tokenExpired, alreadyUsed }

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

  Either<PasswordResetTokenError, PasswordResetToken> use() {
    if (isExpired) {
      return const Left(PasswordResetTokenError.tokenExpired);
    }

    if (isUsed) {
      return const Left(PasswordResetTokenError.alreadyUsed);
    }

    return Right(copyWith(isUsed: true, updatedAt: DateTime.now()));
  }
}
