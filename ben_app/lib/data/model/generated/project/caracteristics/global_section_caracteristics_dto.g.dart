// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../project/caracteristics/global_section_caracteristics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GlobalSectionCaracteristicsDTOImpl
    _$$GlobalSectionCaracteristicsDTOImplFromJson(Map<String, dynamic> json) =>
        _$GlobalSectionCaracteristicsDTOImpl(
          minWayWidth: (json['minWayWidth'] as num).toDouble(),
          maxWayWidth: (json['maxWayWidth'] as num).toDouble(),
          maxHomeToHomeWidth: (json['maxHomeToHomeWidth'] as num).toDouble(),
          unidirectional: json['unidirectional'] as bool,
          hasParkingSlot: json['hasParkingSlot'] as bool,
          parkingCaracteristics: json['parkingCaracteristics'] == null
              ? null
              : ParkingCaracteristicsDTO.fromJson(
                  json['parkingCaracteristics'] as Map<String, dynamic>),
          speedCaracteristics: SpeedCaracteristicsDTO.fromJson(
              json['speedCaracteristics'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GlobalSectionCaracteristicsDTOImplToJson(
        _$GlobalSectionCaracteristicsDTOImpl instance) =>
    <String, dynamic>{
      'minWayWidth': instance.minWayWidth,
      'maxWayWidth': instance.maxWayWidth,
      'maxHomeToHomeWidth': instance.maxHomeToHomeWidth,
      'unidirectional': instance.unidirectional,
      'hasParkingSlot': instance.hasParkingSlot,
      'parkingCaracteristics': instance.parkingCaracteristics?.toJson(),
      'speedCaracteristics': instance.speedCaracteristics.toJson(),
    };

_$ParkingCaracteristicsDTOImpl _$$ParkingCaracteristicsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ParkingCaracteristicsDTOImpl(
      parkingSide: $enumDecode(_$ParkingSideDTOEnumMap, json['parkingSide']),
      parkingType: $enumDecode(_$ParkingTypeDTOEnumMap, json['parkingType']),
      number: json['number'] as int,
    );

Map<String, dynamic> _$$ParkingCaracteristicsDTOImplToJson(
        _$ParkingCaracteristicsDTOImpl instance) =>
    <String, dynamic>{
      'parkingSide': _$ParkingSideDTOEnumMap[instance.parkingSide]!,
      'parkingType': _$ParkingTypeDTOEnumMap[instance.parkingType]!,
      'number': instance.number,
    };

const _$ParkingSideDTOEnumMap = {
  ParkingSideDTO.odd: 'odd',
  ParkingSideDTO.even: 'even',
  ParkingSideDTO.both: 'both',
};

const _$ParkingTypeDTOEnumMap = {
  ParkingTypeDTO.niche: 'niche',
  ParkingTypeDTO.herringbone: 'herringbone',
  ParkingTypeDTO.rows: 'rows',
};

_$SpeedCaracteristicsDTOImpl _$$SpeedCaracteristicsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SpeedCaracteristicsDTOImpl(
      walkArea: json['walkArea'] as bool,
      meetArea: json['meetArea'] as bool,
      kmh30Area: json['kmh30Area'] as bool,
      kmh30: json['kmh30'] as bool,
      kmh50: json['kmh50'] as bool,
      kmh70: json['kmh70'] as bool,
      kmh80: json['kmh80'] as bool,
      kmh90AndMore: json['kmh90AndMore'] as bool,
    );

Map<String, dynamic> _$$SpeedCaracteristicsDTOImplToJson(
        _$SpeedCaracteristicsDTOImpl instance) =>
    <String, dynamic>{
      'walkArea': instance.walkArea,
      'meetArea': instance.meetArea,
      'kmh30Area': instance.kmh30Area,
      'kmh30': instance.kmh30,
      'kmh50': instance.kmh50,
      'kmh70': instance.kmh70,
      'kmh80': instance.kmh80,
      'kmh90AndMore': instance.kmh90AndMore,
    };
