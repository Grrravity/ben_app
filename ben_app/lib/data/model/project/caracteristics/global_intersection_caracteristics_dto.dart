import 'package:ben_app/domain/entities/project/caracteristics/global_intersection_caracteristics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/project/caracteristics/global_intersection_caracteristics_dto.freezed.dart';
part '../../generated/project/caracteristics/global_intersection_caracteristics_dto.g.dart';

@freezed
class GlobalIntersectionCaracteristicsDTO
    with _$GlobalIntersectionCaracteristicsDTO {
  @JsonSerializable(explicitToJson: true)
  const factory GlobalIntersectionCaracteristicsDTO({
    IntersectionTypeDTO? intersectionType,
    required IntersectionManagementDTO intersectionManagement,
    required BikeManagementDTO bikeManagement,
    required IntersectionWaythroughDTO intersectionWaythrough,
  }) = _GlobalIntersectionCaracteristicsDTO;

  factory GlobalIntersectionCaracteristicsDTO.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GlobalIntersectionCaracteristicsDTOFromJson(json);
}

extension OnGlobalIntersectionCaracteristics
    on GlobalIntersectionCaracteristics {
  GlobalIntersectionCaracteristicsDTO get toDto =>
      GlobalIntersectionCaracteristicsDTO(
        intersectionType: intersectionType?.toDto,
        intersectionManagement: intersectionManagement.toDto,
        bikeManagement: bikeManagement.toDto,
        intersectionWaythrough: intersectionWaythrough.toDto,
      );
}

extension OnGlobalIntersectionCaracteristicsList
    on List<GlobalIntersectionCaracteristics> {
  List<GlobalIntersectionCaracteristicsDTO> get toDto =>
      map((entity) => entity.toDto).toList();
}

extension OnGlobalIntersectionCaracteristicsDTO
    on GlobalIntersectionCaracteristicsDTO {
  GlobalIntersectionCaracteristics get toEntity =>
      GlobalIntersectionCaracteristics(
        intersectionType: intersectionType?.toEntity,
        intersectionManagement: intersectionManagement.toEntity,
        bikeManagement: bikeManagement.toEntity,
        intersectionWaythrough: intersectionWaythrough.toEntity,
      );
}

extension OnGlobalIntersectionCaracteristicsDTOList
    on List<GlobalIntersectionCaracteristicsDTO> {
  List<GlobalIntersectionCaracteristics> get toEntity =>
      map((dto) => dto.toEntity).toList();
}

@JsonEnum()
enum IntersectionTypeDTO {
  @JsonValue('t')
  t,
  @JsonValue('x')
  x,
  @JsonValue('roundabout')
  roundabout,
  @JsonValue('complex')
  complex,
}

extension OnIntersectionType on IntersectionType {
  IntersectionTypeDTO get toDto => switch (this) {
        IntersectionType.t => IntersectionTypeDTO.t,
        IntersectionType.x => IntersectionTypeDTO.x,
        IntersectionType.roundabout => IntersectionTypeDTO.roundabout,
        IntersectionType.complex => IntersectionTypeDTO.complex,
      };
}

extension OnIntersectionTypeList on List<IntersectionType> {
  List<IntersectionTypeDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnIntersectionTypeDTO on IntersectionTypeDTO {
  IntersectionType get toEntity => switch (this) {
        IntersectionTypeDTO.t => IntersectionType.t,
        IntersectionTypeDTO.x => IntersectionType.x,
        IntersectionTypeDTO.roundabout => IntersectionType.roundabout,
        IntersectionTypeDTO.complex => IntersectionType.complex,
      };
}

extension OnIntersectionTypeDTOList on List<IntersectionTypeDTO> {
  List<IntersectionType> get toEntity => map((dto) => dto.toEntity).toList();
}

@freezed
class IntersectionManagementDTO with _$IntersectionManagementDTO {
  const factory IntersectionManagementDTO({
    required bool giveWay,
    required bool stop,
    required bool trafficLights,
    required bool rightPriority,
  }) = _IntersectionManagementDTO;

  factory IntersectionManagementDTO.fromJson(Map<String, dynamic> json) =>
      _$IntersectionManagementDTOFromJson(json);
}

extension OnIntersectionManagement on IntersectionManagement {
  IntersectionManagementDTO get toDto {
    return IntersectionManagementDTO(
      giveWay: giveWay,
      stop: stop,
      trafficLights: trafficLights,
      rightPriority: rightPriority,
    );
  }
}

extension OnIntersectionManagementList on List<IntersectionManagement> {
  List<IntersectionManagementDTO> get toDto =>
      map((entity) => entity.toDto).toList();
}

extension OnIntersectionManagementDTO on IntersectionManagementDTO {
  IntersectionManagement get toEntity => IntersectionManagement(
        giveWay: giveWay,
        stop: stop,
        trafficLights: trafficLights,
        rightPriority: rightPriority,
      );
}

extension OnIntersectionManagementDTOList on List<IntersectionManagementDTO> {
  List<IntersectionManagement> get toEntity =>
      map((dto) => dto.toEntity).toList();
}

@freezed
class BikeManagementDTO with _$BikeManagementDTO {
  const factory BikeManagementDTO({
    required bool bikeSpace,
    required bool bikeGiveway,
    required bool other,
    String? comment,
  }) = _BikeManagementDTO;

  factory BikeManagementDTO.fromJson(Map<String, dynamic> json) =>
      _$BikeManagementDTOFromJson(json);
}

extension OnBikeManagement on BikeManagement {
  BikeManagementDTO get toDto {
    return BikeManagementDTO(
      bikeSpace: bikeSpace,
      bikeGiveway: bikeGiveway,
      other: other,
      comment: comment,
    );
  }
}

extension OnBikeManagementList on List<BikeManagement> {
  List<BikeManagementDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnBikeManagementDTO on BikeManagementDTO {
  BikeManagement get toEntity => BikeManagement(
        bikeSpace: bikeSpace,
        bikeGiveway: bikeGiveway,
        other: other,
        comment: comment,
      );
}

extension OnBikeManagementDTOList on List<BikeManagementDTO> {
  List<BikeManagement> get toEntity => map((dto) => dto.toEntity).toList();
}

@freezed
class IntersectionWaythroughDTO with _$IntersectionWaythroughDTO {
  const factory IntersectionWaythroughDTO({
    required bool specificWaythrough,
    required bool walkwayWaythrough,
    required bool none,
    required bool other,
    String? comment,
  }) = _IntersectionWaythroughDTO;

  factory IntersectionWaythroughDTO.fromJson(Map<String, dynamic> json) =>
      _$IntersectionWaythroughDTOFromJson(json);
}

extension OnIntersectionWaythrough on IntersectionWaythrough {
  IntersectionWaythroughDTO get toDto {
    return IntersectionWaythroughDTO(
      specificWaythrough: specificWaythrough,
      walkwayWaythrough: walkwayWaythrough,
      none: none,
      other: other,
      comment: comment,
    );
  }
}

extension OnIntersectionWaythroughList on List<IntersectionWaythrough> {
  List<IntersectionWaythroughDTO> get toDto =>
      map((entity) => entity.toDto).toList();
}

extension OnIntersectionWaythroughDTO on IntersectionWaythroughDTO {
  IntersectionWaythrough get toEntity => IntersectionWaythrough(
        specificWaythrough: specificWaythrough,
        walkwayWaythrough: walkwayWaythrough,
        none: none,
        other: other,
        comment: comment,
      );
}

extension OnIntersectionWaythroughDTOList on List<IntersectionWaythroughDTO> {
  List<IntersectionWaythrough> get toEntity =>
      map((dto) => dto.toEntity).toList();
}
