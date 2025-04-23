import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'dle_editor.mapper.dart';

@MappableEnum()
enum DleEditorRole {
  editor,
  admin,
  owner;

  bool get isOwner => this == owner;

  bool get isAdmin => this == admin;

  bool get isEditor => this == editor;

  bool operator >=(Object other) {
    if (other is! DleEditorRole) return false;
    return index >= other.index;
  }
}

@MappableClass()
class DleEditor extends Entity with DleEditorMappable {
  DleEditor({
    super.id,
    required this.userId,
    required this.dleId,
    required this.role,
    required this.updatedAt,
    required this.createdAt,
  });

  DleEditor.create({
    required this.userId,
    required this.dleId,
    this.role = DleEditorRole.editor,
  }) : updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String userId;
  final String dleId;

  final DleEditorRole role;
  final DateTime updatedAt;
  final DateTime createdAt;

  DleEditor editRole(DleEditorRole role) {
    return copyWith(role: role, updatedAt: DateTime.now());
  }
}
