import 'package:ben_app/data/model/capture_dto.dart';
import 'package:ben_app/data/model/project/caracteristics/bikable_caracteristics_dto.dart';
import 'package:ben_app/data/model/project/caracteristics/global_intersection_caracteristics_dto.dart';
import 'package:ben_app/domain/entities/project/intersection/intersection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/project/intersection/intersection_dto.freezed.dart';
part '../../generated/project/intersection/intersection_dto.g.dart';

@freezed
class IntersectionDTO with _$IntersectionDTO {
  @JsonSerializable(explicitToJson: true)
  const factory IntersectionDTO({
    required int index,
    required String name,
    required List<String> ways,
    required List<String> municipalities,
    required String illustration,
    required GlobalIntersectionCaracteristicsDTO globalCaracteristics,
    required BikabledCaracteristicsDTO bikableCaracteristics,
    required List<IntersectionContentDTO> content,
    String? comment,
  }) = _IntersectionDTO;

  factory IntersectionDTO.fromJson(Map<String, dynamic> json) =>
      _$IntersectionDTOFromJson(json);
}

extension OnIntersection on Intersection {
  IntersectionDTO get toDto => IntersectionDTO(
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

extension OnIntersectionList on List<Intersection> {
  List<IntersectionDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnIntersectionDTO on IntersectionDTO {
  Intersection get toEntity => Intersection(
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

extension OnIntersectionDTOList on List<IntersectionDTO> {
  List<Intersection> get toEntity => map((dto) => dto.toEntity).toList();
}

@freezed
class IntersectionContentDTO with _$IntersectionContentDTO {
  @JsonSerializable(explicitToJson: true)
  const factory IntersectionContentDTO({
    required String sectionName,
    required int pictureQuantity,
    required List<CapturesDTO> pictures,
  }) = _IntersectionContentDTO;

  factory IntersectionContentDTO.fromJson(Map<String, dynamic> json) =>
      _$IntersectionContentDTOFromJson(json);
}

extension OnIntersectionContent on IntersectionContent {
  IntersectionContentDTO get toDto => IntersectionContentDTO(
        sectionName: sectionName,
        pictureQuantity: pictureQuantity,
        pictures: pictures.toDto,
      );
}

extension OnIntersectionContentList on List<IntersectionContent> {
  List<IntersectionContentDTO> get toDto =>
      map((entity) => entity.toDto).toList();
}

extension OnIntersectionContentDTO on IntersectionContentDTO {
  IntersectionContent get toEntity => IntersectionContent(
        sectionName: sectionName,
        pictureQuantity: pictureQuantity,
        pictures: pictures.toEntity,
      );
}

extension OnIntersectionContentDTOList on List<IntersectionContentDTO> {
  List<IntersectionContent> get toEntity => map((dto) => dto.toEntity).toList();
}
