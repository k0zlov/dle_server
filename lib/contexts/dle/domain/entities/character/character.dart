import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'character.mapper.dart';

@MappableClass()
class Character extends Entity with CharacterMappable {
  Character({
    super.id,
    required this.dleId,
    required this.name,
    required this.aliases,
    required this.imageId,
    required this.isHidden,
    required this.updatedAt,
    required this.createdAt,
  });

  Character.create({
    required this.name,
    required this.dleId,
    this.aliases = const <String>[],
    this.isHidden = false,
    this.imageId,
  }) : updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String dleId;
  final String name;
  final List<String> aliases;
  final String? imageId;
  final bool isHidden;

  final DateTime updatedAt;
  final DateTime createdAt;

  Character removeImage() {
    return Character(
      id: id,
      dleId: dleId,
      name: name,
      aliases: aliases,
      imageId: null,
      isHidden: isHidden,
      updatedAt: DateTime.now(),
      createdAt: createdAt,
    );
  }

  Character edit({
    String? imageId,
    String? name,
    List<String>? aliases,
    bool? isHidden,
  }) {
    return copyWith(
      name: name,
      imageId: imageId,
      aliases: aliases,
      isHidden: isHidden,
      updatedAt: DateTime.now(),
    );
  }
}
