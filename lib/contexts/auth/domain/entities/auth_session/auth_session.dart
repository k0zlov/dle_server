import 'package:dart_mappable/dart_mappable.dart';
import 'package:users_api/shared_kernel/domain/entities/entity.dart';

part 'auth_session.mapper.dart';

@MappableClass()
class AuthSession extends Entity with AuthSessionMappable {
  AuthSession({
    required this.userId,
    required this.refreshToken,
    required this.ip,
    required this.deviceInfo,
    required this.expiresAt,
    required this.updatedAt,
    required this.createdAt,
    super.id,
  });

  AuthSession.create({
    required this.userId,
    required this.refreshToken,
    required this.ip,
    required this.deviceInfo,
    required Duration validity,
  })
      : expiresAt = DateTime.now().add(validity),
        updatedAt = DateTime.now(),
        createdAt = DateTime.now();

  final int userId;

  final String refreshToken;
  final String? ip;
  final String? deviceInfo;

  final DateTime expiresAt;

  final DateTime updatedAt;
  final DateTime createdAt;

  bool get isExpired => DateTime.now().isAfter(expiresAt);

  AuthSession refresh(String refreshToken, Duration validity) {
    return copyWith(
      refreshToken: refreshToken,
      expiresAt: DateTime.now().add(validity),
      updatedAt: DateTime.now(),
    );
  }
}
