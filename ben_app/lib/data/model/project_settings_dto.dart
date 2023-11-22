import 'package:ben_app/data/model/section_settings_dto.dart';
import 'package:ben_app/domain/entities/project_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/project_settings_dto.freezed.dart';
part 'generated/project_settings_dto.g.dart';

@freezed
class ProjectSettingsDTO with _$ProjectSettingsDTO {
  @JsonSerializable(explicitToJson: true)
  const factory ProjectSettingsDTO({
    required SectionSettingsDTO sectionPictureSetting,
    required SectionSettingsDTO intersectionPictureSetting,
  }) = _ProjectSettingsDTO;

  factory ProjectSettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$ProjectSettingsDTOFromJson(json);
}

extension OnProjectSettings on ProjectSettings {
  ProjectSettingsDTO get toDto => ProjectSettingsDTO(
        sectionPictureSetting: sectionPictureSetting.toDto,
        intersectionPictureSetting: intersectionPictureSetting.toDto,
      );
}

extension ProjectSettingsList on List<ProjectSettings> {
  List<ProjectSettingsDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnProjectSettingsDTO on ProjectSettingsDTO {
  ProjectSettings get toEntity => ProjectSettings(
        sectionPictureSetting: sectionPictureSetting.toEntity,
        intersectionPictureSetting: intersectionPictureSetting.toEntity,
      );
}

extension OnProjectSettingsDTOList on List<ProjectSettingsDTO> {
  List<ProjectSettings> get toEntity => map((dto) => dto.toEntity).toList();
}
