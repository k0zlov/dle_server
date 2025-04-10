import 'package:dle_server/contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_session_dto.freezed.dart';

part 'auth_session_dto.g.dart';

@freezed
class AuthSessionDto with _$AuthSessionDto {
  const factory AuthSessionDto({
    required String id,
    required String userId,
    required String ip,
    required String deviceInfo,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _AuthSessionDto;

  factory AuthSessionDto.fromEntity(AuthSession entity) {
    return AuthSessionDto.fromJson(entity.toMap());
  }

  factory AuthSessionDto.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionDtoFromJson(json);
}
