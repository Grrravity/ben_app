import 'package:ben_app/data/model/project/parcours_dto.dart';
import 'package:ben_app/domain/entities/project/project_content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/project/project_content_dto.freezed.dart';
part '../generated/project/project_content_dto.g.dart';

@freezed
class ProjectContentDTO with _$ProjectContentDTO {
  @JsonSerializable(explicitToJson: true)
  const factory ProjectContentDTO({
    required String name,
    required List<ParcoursDTO> parcours,
  }) = _ProjectContentDTO;

  factory ProjectContentDTO.fromJson(Map<String, dynamic> json) =>
      _$ProjectContentDTOFromJson(json);
}

extension OnProjectContent on ProjectContent {
  ProjectContentDTO get toDto => ProjectContentDTO(
        name: name,
        parcours: parcours.toDto,
      );
}

extension OnProjectContentList on List<ProjectContent> {
  List<ProjectContentDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnProjectContentDTO on ProjectContentDTO {
  ProjectContent get toEntity => ProjectContent(
        name: name,
        parcours: parcours.toEntity,
      );
}

extension OnProjectContentDTOList on List<ProjectContentDTO> {
  List<ProjectContent> get toEntity => map((dto) => dto.toEntity).toList();
}
