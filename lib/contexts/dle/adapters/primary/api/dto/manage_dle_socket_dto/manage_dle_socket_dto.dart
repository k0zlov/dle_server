import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_dle_dto/manage_dle_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_dle_socket_dto.freezed.dart';

part 'manage_dle_socket_dto.g.dart';

enum ManageDleSocketEventType { delete, update }

@freezed
class ManageDleSocketDto with _$ManageDleSocketDto {
  const factory ManageDleSocketDto({
    required ManageDleSocketEventType type,
    @JsonKey(name: 'items') required List<ManageDleDto> dtoList,
  }) = _ManageDleSocketDto;

  factory ManageDleSocketDto.fromJson(Map<String, dynamic> json) =>
      _$ManageDleSocketDtoFromJson(json);
}
