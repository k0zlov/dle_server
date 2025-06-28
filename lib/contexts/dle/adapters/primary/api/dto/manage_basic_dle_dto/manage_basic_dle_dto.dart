import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_character_parameter_dto/manage_character_parameter_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_parameter_dto/manage_parameter_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_selectable_value_dto/manage_selectable_value_dto.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_basic_dle_dto.freezed.dart';

part 'manage_basic_dle_dto.g.dart';

@freezed
class ManageBasicDleDto with _$ManageBasicDleDto {
  const factory ManageBasicDleDto({
    required String id,
    required String dleId,
    required DateTime updatedAt,
    required DateTime createdAt,
    required List<ManageParameterDto> parameters,
    required List<ManageSelectableValueDto> selectableValues,
    required List<ManageCharacterParameterDto> characterParameters,
  }) = _ManageBasicDleDto;

  factory ManageBasicDleDto.fromEntity(BasicDle basicDle) {
    return ManageBasicDleDto.fromJson(basicDle.toMap());
  }

  factory ManageBasicDleDto.fromJson(Map<String, dynamic> json) =>
      _$ManageBasicDleDtoFromJson(json);
}
