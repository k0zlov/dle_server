import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/auth/domain/exceptions/auth_exceptions.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';
import 'package:uuid/v4.dart';

part 'auth_session.mapper.dart';

@MappableClass()
class AuthSession extends Entity with AuthSessionMappable {
  AuthSession({
    super.id,
    required this.userId,
    required this.ip,
    required this.refreshToken,
    required this.deviceInfo,
    required this.expiresAt,
    required this.updatedAt,
    required this.createdAt,
  });

  AuthSession.create({
    required this.userId,
    required this.ip,
    required this.deviceInfo,
  }) : refreshToken = const UuidV4().generate(),
       expiresAt = _getExpirationDate(),
       updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String userId;

  final String refreshToken;

  final String ip;
  final String deviceInfo;

  final DateTime expiresAt;

  final DateTime updatedAt;
  final DateTime createdAt;

  bool get isExpired => DateTime.now().isAfter(expiresAt);

  static DateTime _getExpirationDate() {
    return DateTime.now().add(const Duration(days: 10));
  }

  AuthSession refresh({
    required String token,
    required String ip,
    required String deviceInfo,
  }) {
    if (isExpired) {
      throw SessionExpiredException();
    }

    if (refreshToken != token) {
      throw SessionExpiredException();
    }

    return copyWith(
      refreshToken: const UuidV4().generate(),
      ip: ip,
      deviceInfo: deviceInfo,
      expiresAt: _getExpirationDate(),
      updatedAt: DateTime.now(),
    );
  }
}
