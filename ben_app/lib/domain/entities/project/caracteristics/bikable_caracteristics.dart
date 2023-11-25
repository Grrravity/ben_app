import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/project/caracteristics/bikable_caracteristics.freezed.dart';

@freezed
class BikabledCaracteristics with _$BikabledCaracteristics {
  const factory BikabledCaracteristics({
    required CycleManagementCaracteristics cycleManagementCaracteristics,
    required RoadcareCaracteristics roadcareCaracteristics,
    required RoadQualityCaracteristics roadQualityCaracteristics,
  }) = _BikabledCaracteristics;

  factory BikabledCaracteristics.asEmpty() => BikabledCaracteristics(
        cycleManagementCaracteristics: CycleManagementCaracteristics.asEmpty(),
        roadcareCaracteristics: RoadcareCaracteristics.asEmpty(),
        roadQualityCaracteristics: RoadQualityCaracteristics.asEmpty(),
      );
}

@freezed
class CycleManagementCaracteristics with _$CycleManagementCaracteristics {
  const factory CycleManagementCaracteristics({
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
  }) = _CycleManagementCaracteristics;

  factory CycleManagementCaracteristics.asEmpty() =>
      const CycleManagementCaracteristics(
        walkArea: false,
        meetArea: false,
        kmh30Area: false,
        bikeAndBusWay: false,
        bikePath: false,
        chaucidou: false,
        writtenBikepath: false,
        bikePathway: false,
        bikeRoad: false,
        bothWayBikepathSeparated: false,
        bothWayBikepathNotSeparated: false,
        oneWayPath: false,
        bothWayPath: false,
        greenWayPath: false,
        bridge: false,
        underground: false,
      );
}

@freezed
class RoadcareCaracteristics with _$RoadcareCaracteristics {
  const factory RoadcareCaracteristics({
    required bool pavedRoad, //enrobé
    required bool concrete, //béton
    required bool stabilized, //stabilisé
  }) = _RoadcareCaracteristics;

  factory RoadcareCaracteristics.asEmpty() => const RoadcareCaracteristics(
        pavedRoad: false,
        concrete: false,
        stabilized: false,
      );
}

@freezed
class RoadQualityCaracteristics with _$RoadQualityCaracteristics {
  const factory RoadQualityCaracteristics({
    required bool newOrAlmost,
    required bool good,
    required bool slightlyDamaged,
    required bool heavilyDamaged,
  }) = _RoadQualityCaracteristics;

  factory RoadQualityCaracteristics.asEmpty() =>
      const RoadQualityCaracteristics(
        newOrAlmost: false,
        good: false,
        slightlyDamaged: false,
        heavilyDamaged: false,
      );
}
