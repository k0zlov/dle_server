import 'package:dle_server/contexts/auth/adapters/primary/api/dto/auth_session_dto/auth_session_dto.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String email,
    required List<AuthSessionDto> sessions,
    required bool emailVerified,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _UserDto;

  factory UserDto.fromEntity(User user) {
    return UserDto.fromJson(user.toMap());
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
