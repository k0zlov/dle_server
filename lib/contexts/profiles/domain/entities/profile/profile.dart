import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/profiles/domain/exceptions/profiles_exceptions.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';
import 'package:uuid/v4.dart';

part 'profile.mapper.dart';

@MappableClass()
class Profile extends Entity with ProfileMappable {
  Profile({
    super.id,
    required this.userId,
    required this.isSetUp,
    required this.username,
    required this.pictureId,
    required this.updatedAt,
    required this.createdAt,
  });

  Profile.create({required this.userId})
    : pictureId = null,
      username = const UuidV4().generate(),
      isSetUp = false,
      updatedAt = DateTime.now(),
      createdAt = DateTime.now();

  final String userId;
  final bool isSetUp;
  final String username;
  final String? pictureId;

  final DateTime updatedAt;
  final DateTime createdAt;

  Profile setUp({required String username, String? pictureId}) {
    if (isSetUp) {
      throw ProfileAlreadySetUpException();
    }

    return copyWith(
      username: username,
      pictureId: pictureId,
      isSetUp: true,
      updatedAt: DateTime.now(),
    );
  }

  Profile edit({String? username, String? pictureId}) {
    return copyWith(
      username: username,
      pictureId: pictureId,
      updatedAt: DateTime.now(),
    );
  }
}
