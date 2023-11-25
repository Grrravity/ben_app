import 'package:ben_app/domain/entities/project/caracteristics/global_section_caracteristics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/project/caracteristics/global_section_caracteristics_dto.freezed.dart';
part '../../generated/project/caracteristics/global_section_caracteristics_dto.g.dart';

@freezed
class GlobalSectionCaracteristicsDTO with _$GlobalSectionCaracteristicsDTO {
  @JsonSerializable(explicitToJson: true)
  const factory GlobalSectionCaracteristicsDTO({
    required double minWayWidth,
    required double maxWayWidth,
    required double maxHomeToHomeWidth,
    required bool unidirectional,
    required bool hasParkingSlot,
    ParkingCaracteristicsDTO? parkingCaracteristics,
    required SpeedCaracteristicsDTO speedCaracteristics,
  }) = _GlobalSectionCaracteristicsDTO;

  factory GlobalSectionCaracteristicsDTO.fromJson(Map<String, dynamic> json) =>
      _$GlobalSectionCaracteristicsDTOFromJson(json);
}

extension OnGlobalSectionCaracteristics on GlobalSectionCaracteristics {
  GlobalSectionCaracteristicsDTO get toDto => GlobalSectionCaracteristicsDTO(
        minWayWidth: minWayWidth,
        maxWayWidth: maxWayWidth,
        maxHomeToHomeWidth: maxHomeToHomeWidth,
        unidirectional: unidirectional,
        hasParkingSlot: hasParkingSlot,
        parkingCaracteristics: parkingCaracteristics?.toDto,
        speedCaracteristics: speedCaracteristics.toDto,
      );
}

extension OnGlobalSectionCaracteristicsList
    on List<GlobalSectionCaracteristics> {
  List<GlobalSectionCaracteristicsDTO> get toDto =>
      map((entity) => entity.toDto).toList();
}

extension OnGlobalSectionCaracteristicsDTO on GlobalSectionCaracteristicsDTO {
  GlobalSectionCaracteristics get toEntity => GlobalSectionCaracteristics(
        minWayWidth: minWayWidth,
        maxWayWidth: maxWayWidth,
        maxHomeToHomeWidth: maxHomeToHomeWidth,
        unidirectional: unidirectional,
        hasParkingSlot: hasParkingSlot,
        parkingCaracteristics: parkingCaracteristics?.toEntity,
        speedCaracteristics: speedCaracteristics.toEntity,
      );
}

extension OnGlobalSectionCaracteristicsDTOList
    on List<GlobalSectionCaracteristicsDTO> {
  List<GlobalSectionCaracteristics> get toEntity =>
      map((dto) => dto.toEntity).toList();
}

@freezed
class ParkingCaracteristicsDTO with _$ParkingCaracteristicsDTO {
  const factory ParkingCaracteristicsDTO({
    required ParkingSideDTO parkingSide,
    required ParkingTypeDTO parkingType,
    required int number,
  }) = _ParkingCaracteristicsDTO;

  factory ParkingCaracteristicsDTO.fromJson(Map<String, dynamic> json) =>
      _$ParkingCaracteristicsDTOFromJson(json);
}

extension OnParkingCaracteristics on ParkingCaracteristics {
  ParkingCaracteristicsDTO get toDto => ParkingCaracteristicsDTO(
        parkingSide: parkingSide.toDto,
        parkingType: parkingType.toDto,
        number: number,
      );
}

extension OnParkingCaracteristicsList on List<ParkingCaracteristics> {
  List<ParkingCaracteristicsDTO> get toDto =>
      map((entity) => entity.toDto).toList();
}

extension OnParkingCaracteristicsDTO on ParkingCaracteristicsDTO {
  ParkingCaracteristics get toEntity => ParkingCaracteristics(
        parkingSide: parkingSide.toEntity,
        parkingType: parkingType.toEntity,
        number: number,
      );
}

extension OnParkingCaracteristicsDTOList on List<ParkingCaracteristicsDTO> {
  List<ParkingCaracteristics> get toEntity =>
      map((dto) => dto.toEntity).toList();
}

@JsonEnum()
enum ParkingSideDTO {
  @JsonValue('odd')
  odd, //impaire
  @JsonValue('even')
  even, //paire
  @JsonValue('both')
  both,
}

extension OnParkingSide on ParkingSide {
  ParkingSideDTO get toDto => switch (this) {
        ParkingSide.odd => ParkingSideDTO.odd,
        ParkingSide.even => ParkingSideDTO.even,
        ParkingSide.both => ParkingSideDTO.both,
      };
}

extension OnParkingSideList on List<ParkingSide> {
  List<ParkingSideDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnParkingSideDTO on ParkingSideDTO {
  ParkingSide get toEntity => switch (this) {
        ParkingSideDTO.odd => ParkingSide.odd,
        ParkingSideDTO.even => ParkingSide.even,
        ParkingSideDTO.both => ParkingSide.both,
      };
}

extension OnParkingSideDTOList on List<ParkingSideDTO> {
  List<ParkingSide> get toEntity => map((dto) => dto.toEntity).toList();
}

@JsonEnum()
enum ParkingTypeDTO {
  @JsonValue('niche')
  niche, // créneau
  @JsonValue('herringbone')
  herringbone, //épis
  @JsonValue('rows')
  rows, //bataille
}

extension OnParkingType on ParkingType {
  ParkingTypeDTO get toDto => switch (this) {
        ParkingType.niche => ParkingTypeDTO.niche,
        ParkingType.herringbone => ParkingTypeDTO.herringbone,
        ParkingType.rows => ParkingTypeDTO.rows,
      };
}

extension OnParkingTypeList on List<ParkingType> {
  List<ParkingTypeDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnParkingTypeDTO on ParkingTypeDTO {
  ParkingType get toEntity => switch (this) {
        ParkingTypeDTO.niche => ParkingType.niche,
        ParkingTypeDTO.herringbone => ParkingType.herringbone,
        ParkingTypeDTO.rows => ParkingType.rows,
      };
}

extension OnParkingTypeDTOList on List<ParkingTypeDTO> {
  List<ParkingType> get toEntity => map((dto) => dto.toEntity).toList();
}

@freezed
class SpeedCaracteristicsDTO with _$SpeedCaracteristicsDTO {
  const factory SpeedCaracteristicsDTO({
    required bool walkArea,
    required bool meetArea,
    required bool kmh30Area,
    required bool kmh30,
    required bool kmh50,
    required bool kmh70,
    required bool kmh80,
    required bool kmh90AndMore,
  }) = _SpeedCaracteristicsDTO;

  factory SpeedCaracteristicsDTO.fromJson(Map<String, dynamic> json) =>
      _$SpeedCaracteristicsDTOFromJson(json);
}

extension OnSpeedCaracteristics on SpeedCaracteristics {
  SpeedCaracteristicsDTO get toDto => SpeedCaracteristicsDTO(
        walkArea: walkArea,
        meetArea: meetArea,
        kmh30Area: kmh30Area,
        kmh30: kmh30,
        kmh50: kmh50,
        kmh70: kmh70,
        kmh80: kmh80,
        kmh90AndMore: kmh90AndMore,
      );
}

extension OnSpeedCaracteristicsList on List<SpeedCaracteristics> {
  List<SpeedCaracteristicsDTO> get toDto =>
      map((entity) => entity.toDto).toList();
}

extension OnSpeedCaracteristicsDTO on SpeedCaracteristicsDTO {
  SpeedCaracteristics get toEntity => SpeedCaracteristics(
        walkArea: walkArea,
        meetArea: meetArea,
        kmh30Area: kmh30Area,
        kmh30: kmh30,
        kmh50: kmh50,
        kmh70: kmh70,
        kmh80: kmh80,
        kmh90AndMore: kmh90AndMore,
      );
}

extension OnSpeedCaracteristicsDTOList on List<SpeedCaracteristicsDTO> {
  List<SpeedCaracteristics> get toEntity => map((dto) => dto.toEntity).toList();
}
