import 'package:ben_app/data/model/project/intersection/intersection_dto.dart';
import 'package:ben_app/data/model/project/section/section_dto.dart';
import 'package:ben_app/domain/entities/project/parcours.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/project/parcours_dto.freezed.dart';
part '../generated/project/parcours_dto.g.dart';

@freezed
class ParcoursDTO with _$ParcoursDTO {
  @JsonSerializable(explicitToJson: true)
  const factory ParcoursDTO({
    required String id,
    required String name,
    required List<String> ways,
    required List<String> municipalities,
    required List<SectionDTO> sections,
    required List<IntersectionDTO> intersections,
  }) = _ParcoursDTO;

  factory ParcoursDTO.fromJson(Map<String, dynamic> json) =>
      _$ParcoursDTOFromJson(json);
}

extension OnParcours on Parcours {
  ParcoursDTO get toDto => ParcoursDTO(
        id: id,
        name: name,
        ways: ways,
        municipalities: municipalities,
        sections: sections.toDto,
        intersections: intersections.toDto,
      );
}

extension OnParcoursList on List<Parcours> {
  List<ParcoursDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnParcoursDTO on ParcoursDTO {
  Parcours get toEntity => Parcours(
        id: id,
        name: name,
        ways: ways,
        municipalities: municipalities,
        sections: sections.toEntity,
        intersections: intersections.toEntity,
      );
}

extension OnParcoursDTOList on List<ParcoursDTO> {
  List<Parcours> get toEntity => map((dto) => dto.toEntity).toList();
}

@freezed
class CreateParcoursCmdDTO with _$CreateParcoursCmdDTO {
  @JsonSerializable(explicitToJson: true)
  const factory CreateParcoursCmdDTO({
    required String name,
    required List<String> ways,
    required List<String> municipalities,
    required List<SectionDTO> sections,
    required List<IntersectionDTO> intersections,
  }) = _CreateParcoursCmdDTO;

  factory CreateParcoursCmdDTO.fromJson(Map<String, dynamic> json) =>
      _$CreateParcoursCmdDTOFromJson(json);
}

extension OnCreateParcoursCmd on CreateParcoursCmd {
  CreateParcoursCmdDTO get toDto => CreateParcoursCmdDTO(
        name: name,
        ways: ways,
        municipalities: municipalities,
        sections: sections.toDto,
        intersections: intersections.toDto,
      );
}

extension OnCreateParcoursCmdList on List<CreateParcoursCmd> {
  List<CreateParcoursCmdDTO> get toDto =>
      map((CreateParcoursCmd entity) => entity.toDto).toList();
}

extension OnCreateParcoursCmdDTO on CreateParcoursCmdDTO {
  CreateParcoursCmd get toEntity => CreateParcoursCmd(
        name: name,
        ways: ways,
        municipalities: municipalities,
        sections: sections.toEntity,
        intersections: intersections.toEntity,
      );
}

extension OnCreateParcoursCmdDTOList on List<CreateParcoursCmdDTO> {
  List<CreateParcoursCmd> get toEntity =>
      map((CreateParcoursCmdDTO dto) => dto.toEntity).toList();
}
