import 'package:ben_app/data/model/document_reference_converter.dart';
import 'package:ben_app/data/model/project/create_project_dto.cmd.dart';
import 'package:ben_app/data/model/project/project_settings_dto.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/project/project_dto.freezed.dart';
part '../generated/project/project_dto.g.dart';

@freezed
class ProjectDTO with _$ProjectDTO {
  @JsonSerializable(explicitToJson: true)
  const factory ProjectDTO({
    required String id,
    required String name,
    @DocumentSerializer()
    required List<DocumentReference<Map<String, dynamic>>> parcoursReferences,
    required ProjectSettingsDTO settings,
    required int totalSections,
    required int doneSections,
    required int totalIntersections,
    required int doneIntersections,
  }) = _ProjectDTO;

  factory ProjectDTO.fromJson(Map<String, dynamic> json) =>
      _$ProjectDTOFromJson(json);

  factory ProjectDTO.fromCreateProjectCmd({
    required CreateProjectCmdDTO cmd,
    required String id,
    required List<DocumentReference<Map<String, dynamic>>> parcoursReferences,
  }) =>
      ProjectDTO(
        id: id,
        name: cmd.name,
        parcoursReferences: parcoursReferences,
        settings: cmd.settings,
        totalSections: cmd.parcours.fold(
          0,
          (previousValue, element) => previousValue + element.sections.length,
        ),
        doneSections: 0,
        totalIntersections: cmd.parcours.fold(
          0,
          (previousValue, element) =>
              previousValue + element.intersections.length,
        ),
        doneIntersections: 0,
      );
}

extension OnProject on Project {
  ProjectDTO get toDto => ProjectDTO(
        id: id,
        name: name,
        parcoursReferences: parcoursReferences,
        settings: settings.toDto,
        totalSections: totalSections,
        doneSections: doneSections,
        totalIntersections: totalIntersections,
        doneIntersections: doneIntersections,
      );
}

extension OnProjectList on List<Project> {
  List<ProjectDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnProjectDTO on ProjectDTO {
  Project get toEntity => Project(
        id: id,
        name: name,
        parcoursReferences: parcoursReferences,
        settings: settings.toEntity,
        totalSections: totalSections,
        doneSections: doneSections,
        totalIntersections: totalIntersections,
        doneIntersections: doneIntersections,
      );
}

extension OnProjectDTOList on List<ProjectDTO> {
  List<Project> get toEntity => map((dto) => dto.toEntity).toList();
}
