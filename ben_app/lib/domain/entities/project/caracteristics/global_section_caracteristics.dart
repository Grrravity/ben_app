import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/project/caracteristics/global_section_caracteristics.freezed.dart';

@freezed
class GlobalSectionCaracteristics with _$GlobalSectionCaracteristics {
  const factory GlobalSectionCaracteristics({
    required double minWayWidth,
    required double maxWayWidth,
    required double maxHomeToHomeWidth,
    required bool unidirectional,
    required bool hasParkingSlot,
    ParkingCaracteristics? parkingCaracteristics,
    required SpeedCaracteristics speedCaracteristics,
  }) = _GlobalSectionCaracteristics;

  factory GlobalSectionCaracteristics.asEmpty() => GlobalSectionCaracteristics(
        minWayWidth: 0,
        maxWayWidth: 0,
        maxHomeToHomeWidth: 0,
        unidirectional: false,
        hasParkingSlot: false,
        speedCaracteristics: SpeedCaracteristics.asEmpty(),
      );
}

@freezed
class ParkingCaracteristics with _$ParkingCaracteristics {
  const factory ParkingCaracteristics({
    required ParkingSide parkingSide,
    required ParkingType parkingType,
    required int number,
  }) = _ParkingCaracteristics;
}

@JsonEnum()
enum ParkingSide {
  @JsonValue('odd')
  odd, //impaire
  @JsonValue('even')
  even, //paire
  @JsonValue('both')
  both,
}

@JsonEnum()
enum ParkingType {
  @JsonValue('niche')
  niche, // créneau
  @JsonValue('herringbone')
  herringbone, //épis
  @JsonValue('rows')
  rows, //bataille
}

@freezed
class SpeedCaracteristics with _$SpeedCaracteristics {
  const factory SpeedCaracteristics({
    required bool walkArea,
    required bool meetArea,
    required bool kmh30Area,
    required bool kmh30,
    required bool kmh50,
    required bool kmh70,
    required bool kmh80,
    required bool kmh90AndMore,
  }) = _SpeedCaracteristics;

  factory SpeedCaracteristics.asEmpty() => const SpeedCaracteristics(
        walkArea: false,
        meetArea: false,
        kmh30Area: false,
        kmh30: false,
        kmh50: false,
        kmh70: false,
        kmh80: false,
        kmh90AndMore: false,
      );
}
