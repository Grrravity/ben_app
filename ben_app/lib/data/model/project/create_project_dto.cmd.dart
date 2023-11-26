import 'package:ben_app/data/model/project/parcours_dto.dart';
import 'package:ben_app/data/model/project/project_settings_dto.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/project/create_project_dto.cmd.freezed.dart';
part '../generated/project/create_project_dto.cmd.g.dart';

@freezed
class CreateProjectCmdDTO with _$CreateProjectCmdDTO {
  @JsonSerializable(explicitToJson: true)
  const factory CreateProjectCmdDTO({
    required String name,
    required List<ParcoursDTO> parcours,
    required ProjectSettingsDTO settings,
  }) = _CreateProjectCmdDTO;

  factory CreateProjectCmdDTO.fromJson(Map<String, dynamic> json) =>
      _$CreateProjectCmdDTOFromJson(json);
}

extension OnCreateProjectCmd on CreateProjectCmd {
  CreateProjectCmdDTO get toDto => CreateProjectCmdDTO(
        name: name,
        parcours: parcours.toDto,
        settings: settings.toDto,
      );
}

extension OnCreateProjectCmdList on List<CreateProjectCmd> {
  List<CreateProjectCmdDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnCreateProjectCmdDTO on CreateProjectCmdDTO {
  CreateProjectCmd get toEntity => CreateProjectCmd(
        name: name,
        parcours: parcours.toEntity,
        settings: settings.toEntity,
      );
}

extension OnCreateProjectCmdDTOList on List<CreateProjectCmdDTO> {
  List<CreateProjectCmd> get toEntity => map((dto) => dto.toEntity).toList();
}
