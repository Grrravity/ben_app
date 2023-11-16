import 'package:ben_app/data/model/intersection_dto.dart';
import 'package:ben_app/data/model/section_dto.dart';
import 'package:ben_app/domain/entities/parcours.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/parcours_dto.freezed.dart';
part 'generated/parcours_dto.g.dart';

@freezed
class ParcoursDTO with _$ParcoursDTO {
  const factory ParcoursDTO({
    required String name,
    required List<SectionDTO> sections,
    required List<IntersectionDTO> intersections,
  }) = _ParcoursDTO;

  factory ParcoursDTO.fromJson(Map<String, dynamic> json) =>
      _$ParcoursDTOFromJson(json);
}

extension OnParcours on Parcours {
  ParcoursDTO get toDto => ParcoursDTO(
        name: name,
        sections: sections.toDto,
        intersections: intersections.toDto,
      );
}

extension OnParcoursList on List<Parcours> {
  List<ParcoursDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnParcoursDTO on ParcoursDTO {
  Parcours get toEntity => Parcours(
        name: name,
        sections: sections.toEntity,
        intersections: intersections.toEntity,
      );
}

extension OnParcoursDTOList on List<ParcoursDTO> {
  List<Parcours> get toEntity => map((dto) => dto.toEntity).toList();
}
