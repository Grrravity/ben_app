import 'package:ben_app/domain/entities/project_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/project_settings_dto.freezed.dart';
part 'generated/project_settings_dto.g.dart';

@freezed
class ProjectSettingsDTO with _$ProjectSettingsDTO {
  const factory ProjectSettingsDTO({
    required Map<String, int> pictureSections,
  }) = _ProjectSettingsDTO;

  factory ProjectSettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$ProjectSettingsDTOFromJson(json);
}

extension OnProjectSettings on ProjectSettings {
  ProjectSettingsDTO get toDto => ProjectSettingsDTO(
        pictureSections: pictureSections,
      );
}

extension ProjectSettingsList on List<ProjectSettings> {
  List<ProjectSettingsDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnProjectSettingsDTO on ProjectSettingsDTO {
  ProjectSettings get toEntity => ProjectSettings(
        pictureSections: pictureSections,
      );
}

extension OnProjectSettingsDTOList on List<ProjectSettingsDTO> {
  List<ProjectSettings> get toEntity => map((dto) => dto.toEntity).toList();
}
