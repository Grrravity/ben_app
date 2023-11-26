import 'package:ben_app/domain/entities/project/caracteristics/bikable_caracteristics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/project/caracteristics/bikable_caracteristics_dto.freezed.dart';
part '../../generated/project/caracteristics/bikable_caracteristics_dto.g.dart';

@freezed
class BikabledCaracteristicsDTO with _$BikabledCaracteristicsDTO {
  @JsonSerializable(explicitToJson: true)
  const factory BikabledCaracteristicsDTO({
    required CycleManagementCaracteristicsDTO cycleManagementCaracteristics,
    required RoadcareCaracteristicsDTO roadcareCaracteristics,
    required RoadQualityCaracteristicsDTO roadQualityCaracteristics,
  }) = _BikabledCaracteristicsDTO;

  factory BikabledCaracteristicsDTO.fromJson(Map<String, dynamic> json) =>
      _$BikabledCaracteristicsDTOFromJson(json);
}

extension OnBikabledCaracteristics on BikabledCaracteristics {
  BikabledCaracteristicsDTO get toDto => BikabledCaracteristicsDTO(
        cycleManagementCaracteristics: cycleManagementCaracteristics.toDto,
        roadcareCaracteristics: roadcareCaracteristics.toDto,
        roadQualityCaracteristics: roadQualityCaracteristics.toDto,
      );
}

extension OnBikabledCaracteristicsList on List<BikabledCaracteristics> {
  List<BikabledCaracteristicsDTO> get toDto =>
      map((entity) => entity.toDto).toList();
}

extension OnBikabledCaracteristicsDTO on BikabledCaracteristicsDTO {
  BikabledCaracteristics get toEntity => BikabledCaracteristics(
        cycleManagementCaracteristics: cycleManagementCaracteristics.toEntity,
        roadcareCaracteristics: roadcareCaracteristics.toEntity,
        roadQualityCaracteristics: roadQualityCaracteristics.toEntity,
      );
}

extension OnBikabledCaracteristicsDTOList on List<BikabledCaracteristicsDTO> {
  List<BikabledCaracteristics> get toEntity =>
      map((dto) => dto.toEntity).toList();
}

@freezed
class CycleManagementCaracteristicsDTO with _$CycleManagementCaracteristicsDTO {
  const factory CycleManagementCaracteristicsDTO({
    required bool walkArea,
    required bool meetArea,
    required bool kmh30Area,
    required bool bikeAndBusWay,
    required bool bikePath,
    required bool chaucidou,
    required bool writtenBikepath,
    required bool bikePathway,
    required bool bikeRoad,
    required bool bothWayBikepathSeparated,
    required bool bothWayBikepathNotSeparated,
    required bool oneWayPath,
    required bool bothWayPath,
    required bool greenWayPath,
    required bool bridge,
    required bool underground,
  }) = _CycleManagementCaracteristicsDTO;

  factory CycleManagementCaracteristicsDTO.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CycleManagementCaracteristicsDTOFromJson(json);
}

extension OnCycleManagementCaracteristics on CycleManagementCaracteristics {
  CycleManagementCaracteristicsDTO get toDto =>
      CycleManagementCaracteristicsDTO(
        walkArea: walkArea,
        meetArea: meetArea,
        kmh30Area: kmh30Area,
        bikeAndBusWay: bikeAndBusWay,
        bikePath: bikePath,
        chaucidou: chaucidou,
        writtenBikepath: writtenBikepath,
        bikePathway: bikePathway,
        bikeRoad: bikeRoad,
        bothWayBikepathSeparated: bothWayBikepathSeparated,
        bothWayBikepathNotSeparated: bothWayBikepathNotSeparated,
        oneWayPath: oneWayPath,
        bothWayPath: bothWayPath,
        greenWayPath: greenWayPath,
        bridge: bridge,
        underground: underground,
      );
}

extension OnCycleManagementCaracteristicsList
    on List<CycleManagementCaracteristics> {
  List<CycleManagementCaracteristicsDTO> get toDto =>
      map((entity) => entity.toDto).toList();
}

extension OnCycleManagementCaracteristicsDTO
    on CycleManagementCaracteristicsDTO {
  CycleManagementCaracteristics get toEntity => CycleManagementCaracteristics(
        walkArea: walkArea,
        meetArea: meetArea,
        kmh30Area: kmh30Area,
        bikeAndBusWay: bikeAndBusWay,
        bikePath: bikePath,
        chaucidou: chaucidou,
        writtenBikepath: writtenBikepath,
        bikePathway: bikePathway,
        bikeRoad: bikeRoad,
        bothWayBikepathSeparated: bothWayBikepathSeparated,
        bothWayBikepathNotSeparated: bothWayBikepathNotSeparated,
        oneWayPath: oneWayPath,
        bothWayPath: bothWayPath,
        greenWayPath: greenWayPath,
        bridge: bridge,
        underground: underground,
      );
}

extension OnCycleManagementCaracteristicsDTOList
    on List<CycleManagementCaracteristicsDTO> {
  List<CycleManagementCaracteristics> get toEntity =>
      map((dto) => dto.toEntity).toList();
}

@freezed
class RoadcareCaracteristicsDTO with _$RoadcareCaracteristicsDTO {
  const factory RoadcareCaracteristicsDTO({
    required bool pavedRoad, //enrobé
    required bool concrete, //béton
    required bool stabilized, //stabilisé
  }) = _RoadcareCaracteristicsDTO;

  factory RoadcareCaracteristicsDTO.fromJson(Map<String, dynamic> json) =>
      _$RoadcareCaracteristicsDTOFromJson(json);
}

extension OnRoadcareCaracteristics on RoadcareCaracteristics {
  RoadcareCaracteristicsDTO get toDto => RoadcareCaracteristicsDTO(
        pavedRoad: pavedRoad,
        concrete: concrete,
        stabilized: stabilized,
      );
}

extension OnRoadcareCaracteristicsList on List<RoadcareCaracteristics> {
  List<RoadcareCaracteristicsDTO> get toDto =>
      map((entity) => entity.toDto).toList();
}

extension OnRoadcareCaracteristicsDTO on RoadcareCaracteristicsDTO {
  RoadcareCaracteristics get toEntity => RoadcareCaracteristics(
        pavedRoad: pavedRoad,
        concrete: concrete,
        stabilized: stabilized,
      );
}

extension OnRoadcareCaracteristicsDTOList on List<RoadcareCaracteristicsDTO> {
  List<RoadcareCaracteristics> get toEntity =>
      map((dto) => dto.toEntity).toList();
}

@freezed
class RoadQualityCaracteristicsDTO with _$RoadQualityCaracteristicsDTO {
  const factory RoadQualityCaracteristicsDTO({
    required bool newOrAlmost,
    required bool good,
    required bool slightlyDamaged,
    required bool heavilyDamaged,
  }) = _RoadQualityCaracteristicsDTO;

  factory RoadQualityCaracteristicsDTO.fromJson(Map<String, dynamic> json) =>
      _$RoadQualityCaracteristicsDTOFromJson(json);
}

extension OnRoadQualityCaracteristics on RoadQualityCaracteristics {
  RoadQualityCaracteristicsDTO get toDto => RoadQualityCaracteristicsDTO(
        newOrAlmost: newOrAlmost,
        good: good,
        slightlyDamaged: slightlyDamaged,
        heavilyDamaged: heavilyDamaged,
      );
}

extension OnRoadQualityCaracteristicsList on List<RoadQualityCaracteristics> {
  List<RoadQualityCaracteristicsDTO> get toDto =>
      map((entity) => entity.toDto).toList();
}

extension OnRoadQualityCaracteristicsDTO on RoadQualityCaracteristicsDTO {
  RoadQualityCaracteristics get toEntity => RoadQualityCaracteristics(
        newOrAlmost: newOrAlmost,
        good: good,
        slightlyDamaged: slightlyDamaged,
        heavilyDamaged: heavilyDamaged,
      );
}

extension OnRoadQualityCaracteristicsDTOList
    on List<RoadQualityCaracteristicsDTO> {
  List<RoadQualityCaracteristics> get toEntity =>
      map((dto) => dto.toEntity).toList();
}
