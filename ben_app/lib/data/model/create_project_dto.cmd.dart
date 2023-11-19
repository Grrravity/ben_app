import 'package:ben_app/data/model/project_content_dto.dart';
import 'package:ben_app/data/model/project_settings_dto.dart';
import 'package:ben_app/domain/entities/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/create_project_dto.cmd.freezed.dart';
part 'generated/create_project_dto.cmd.g.dart';

@freezed
class CreateProjectCmdDTO with _$CreateProjectCmdDTO {
  @JsonSerializable(explicitToJson: true)
  const factory CreateProjectCmdDTO({
    required ProjectContentDTO content,
    required ProjectSettingsDTO settings,
  }) = _CreateProjectCmdDTO;

  factory CreateProjectCmdDTO.fromJson(Map<String, dynamic> json) =>
      _$CreateProjectCmdDTOFromJson(json);
}

extension OnCreateProjectCmd on CreateProjectCmd {
  CreateProjectCmdDTO get toDto => CreateProjectCmdDTO(
        content: content.toDto,
        settings: settings.toDto,
      );
}

extension OnCreateProjectCmdList on List<CreateProjectCmd> {
  List<CreateProjectCmdDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnCreateProjectCmdDTO on CreateProjectCmdDTO {
  CreateProjectCmd get toEntity => CreateProjectCmd(
        content: content.toEntity,
        settings: settings.toEntity,
      );
}

extension OnCreateProjectCmdDTOList on List<CreateProjectCmdDTO> {
  List<CreateProjectCmd> get toEntity => map((dto) => dto.toEntity).toList();
}
