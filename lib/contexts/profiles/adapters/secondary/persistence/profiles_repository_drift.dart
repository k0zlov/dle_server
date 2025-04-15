import 'package:dle_server/contexts/profiles/application/ports/profiles_repository_port.dart';
import 'package:dle_server/contexts/profiles/domain/entities/profile/profile.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/extensions/table_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfilesRepositoryPort)
class ProfilesRepositoryDrift implements ProfilesRepositoryPort {
  const ProfilesRepositoryDrift({required this.db});

  final Database db;

  Insertable<Profile> mapProfile(Profile profile) {
    return ProfilesCompanion(
      id: Value(profile.id),
      userId: Value(profile.userId),
      username: Value(profile.username),
      isSetUp: Value(profile.isSetUp),
      pictureId: Value(profile.pictureId),
      updatedAt: Value(profile.updatedAt),
      createdAt: Value(profile.createdAt),
    );
  }

  @override
  Future<Profile?> find({String? profileId, String? userId, String? username}) {
    assert(
      profileId != null || userId != null || username != null,
      'One of: "profileId", "username", "userId" must be provided; all cannot be null.',
    );

    return db.profiles.getOrNull((tbl) {
      if (profileId != null) {
        return tbl.id.equals(UuidValue.fromString(profileId));
      } else if (userId != null) {
        return tbl.userId.equals(UuidValue.fromString(userId));
      } else {
        return tbl.username.equals(username!);
      }
    });
  }

  @override
  Future<void> save(Profile profile) {
    return db.profiles.insertOnConflictUpdate(mapProfile(profile));
  }
}
