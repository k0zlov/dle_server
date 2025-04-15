import 'package:dle_server/contexts/profiles/domain/entities/profile/profile.dart';

abstract interface class ProfilesRepositoryPort {
  Future<void> save(Profile profile);

  Future<Profile?> find({String? profileId, String? userId, String? username});
}
