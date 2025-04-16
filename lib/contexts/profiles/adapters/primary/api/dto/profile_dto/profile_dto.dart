import 'package:dle_server/contexts/profiles/domain/entities/profile/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_dto.freezed.dart';

part 'profile_dto.g.dart';

@freezed
class ProfileDto with _$ProfileDto {
  const factory ProfileDto({
    required String id,
    required String userId,
    required String username,
    required bool isSetUp,
    required DateTime updatedAt,
    required DateTime createdAt,
    String? pictureId,
  }) = _ProfileDto;

  factory ProfileDto.fromEntity(Profile profile) {
    return ProfileDto.fromJson(profile.toMap());
  }

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
}
