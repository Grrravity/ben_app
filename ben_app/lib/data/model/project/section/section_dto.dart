import 'package:ben_app/data/model/capture_dto.dart';
import 'package:ben_app/data/model/project/caracteristics/bikable_caracteristics_dto.dart';
import 'package:ben_app/data/model/project/caracteristics/global_section_caracteristics_dto.dart';
import 'package:ben_app/domain/entities/project/section/section.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/project/section/section_dto.freezed.dart';
part '../../generated/project/section/section_dto.g.dart';

@freezed
class SectionDTO with _$SectionDTO {
  @JsonSerializable(explicitToJson: true)
  const factory SectionDTO({
    required int index,
    required String name,
    required List<String> ways,
    required List<String> municipalities,
    required String illustration,
    required GlobalSectionCaracteristicsDTO globalCaracteristics,
    required BikabledCaracteristicsDTO bikableCaracteristics,
    required List<SectionContentDTO> content,
    String? comment,
  }) = _SectionDTO;

  factory SectionDTO.fromJson(Map<String, dynamic> json) =>
      _$SectionDTOFromJson(json);
}

extension OnSection on Section {
  SectionDTO get toDto => SectionDTO(
        index: index,
        name: name,
        ways: ways,
        municipalities: municipalities,
        illustration: illustration,
        globalCaracteristics: globalCaracteristics.toDto,
        bikableCaracteristics: bikableCaracteristics.toDto,
        content: content.toDto,
        comment: comment,
      );
}

extension OnSectionList on List<Section> {
  List<SectionDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnSectionDTO on SectionDTO {
  Section get toEntity => Section(
        index: index,
        name: name,
        ways: ways,
        municipalities: municipalities,
        illustration: illustration,
        globalCaracteristics: globalCaracteristics.toEntity,
        bikableCaracteristics: bikableCaracteristics.toEntity,
        content: content.toEntity,
        comment: comment,
      );
}

extension OnSectionDTOList on List<SectionDTO> {
  List<Section> get toEntity => map((dto) => dto.toEntity).toList();
}

@freezed
class SectionContentDTO with _$SectionContentDTO {
  @JsonSerializable(explicitToJson: true)
  const factory SectionContentDTO({
    required String sectionName,
    required int pictureQuantity,
    required List<CapturesDTO> pictures,
  }) = _SectionContentDTO;

  factory SectionContentDTO.fromJson(Map<String, dynamic> json) =>
      _$SectionContentDTOFromJson(json);
}

extension OnSectionContent on SectionContent {
  SectionContentDTO get toDto => SectionContentDTO(
        sectionName: sectionName,
        pictureQuantity: pictureQuantity,
        pictures: pictures.toDto,
      );
}

extension OnSectionContentList on List<SectionContent> {
  List<SectionContentDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnSectionContentDTO on SectionContentDTO {
  SectionContent get toEntity => SectionContent(
        sectionName: sectionName,
        pictureQuantity: pictureQuantity,
        pictures: pictures.toEntity,
      );
}

extension OnSectionContentDTOList on List<SectionContentDTO> {
  List<SectionContent> get toEntity => map((dto) => dto.toEntity).toList();
}
