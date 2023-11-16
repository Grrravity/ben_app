import 'package:ben_app/data/model/parcours_dto.dart';
import 'package:ben_app/data/model/project_content_dto.dart';
import 'package:ben_app/data/model/project_settings_dto.dart';
import 'package:ben_app/domain/entities/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/project_dto.freezed.dart';
part 'generated/project_dto.g.dart';

@freezed
class ProjectDTO with _$ProjectDTO {
  const factory ProjectDTO({
    required ProjectContentDTO content,
    required ProjectSettingsDTO settings,
  }) = _ProjectDTO;

  factory ProjectDTO.fromJson(Map<String, dynamic> json) =>
      _$ProjectDTOFromJson(json);
}

extension OnProject on Project {
  ProjectDTO get toDto => ProjectDTO(
        content: content.toDto,
        settings: settings.toDto,
      );
}

extension OnProjectList on List<Project> {
  List<ProjectDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnProjectDTO on ProjectDTO {
  Project get toEntity => Project(
        content: content.toEntity,
        settings: settings.toEntity,
      );
}

extension OnProjectDTOList on List<ProjectDTO> {
  List<Project> get toEntity => map((dto) => dto.toEntity).toList();
}
