import 'package:ben_app/data/model/project/create_project_dto.cmd.dart';
import 'package:ben_app/data/model/project/parcours_dto.dart';
import 'package:ben_app/data/model/project/project_settings_dto.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/project/project_dto.freezed.dart';
part '../generated/project/project_dto.g.dart';

@freezed
class ProjectDTO with _$ProjectDTO {
  @JsonSerializable(explicitToJson: true)
  const factory ProjectDTO({
    required String id,
    required String name,
    required List<ParcoursDTO> parcours,
    required ProjectSettingsDTO settings,
  }) = _ProjectDTO;

  factory ProjectDTO.fromJson(Map<String, dynamic> json) =>
      _$ProjectDTOFromJson(json);

  factory ProjectDTO.fromCreateProjectCmd(CreateProjectCmdDTO cmd, String id) =>
      ProjectDTO(
        id: id,
        name: cmd.name,
        parcours: cmd.parcours,
        settings: cmd.settings,
      );
}

extension OnProject on Project {
  ProjectDTO get toDto => ProjectDTO(
        id: id,
        name: name,
        parcours: parcours.toDto,
        settings: settings.toDto,
      );
}

extension OnProjectList on List<Project> {
  List<ProjectDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnProjectDTO on ProjectDTO {
  Project get toEntity => Project(
        id: id,
        name: name,
        parcours: parcours.toEntity,
        settings: settings.toEntity,
      );
}

extension OnProjectDTOList on List<ProjectDTO> {
  List<Project> get toEntity => map((dto) => dto.toEntity).toList();
}
