// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../project/caracteristics/global_intersection_caracteristics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GlobalIntersectionCaracteristicsDTOImpl
    _$$GlobalIntersectionCaracteristicsDTOImplFromJson(
            Map<String, dynamic> json) =>
        _$GlobalIntersectionCaracteristicsDTOImpl(
          intersectionType: $enumDecodeNullable(
              _$IntersectionTypeDTOEnumMap, json['intersectionType']),
          intersectionManagement: IntersectionManagementDTO.fromJson(
              json['intersectionManagement'] as Map<String, dynamic>),
          bikeManagement: BikeManagementDTO.fromJson(
              json['bikeManagement'] as Map<String, dynamic>),
          intersectionWaythrough: IntersectionWaythroughDTO.fromJson(
              json['intersectionWaythrough'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GlobalIntersectionCaracteristicsDTOImplToJson(
        _$GlobalIntersectionCaracteristicsDTOImpl instance) =>
    <String, dynamic>{
      'intersectionType':
          _$IntersectionTypeDTOEnumMap[instance.intersectionType],
      'intersectionManagement': instance.intersectionManagement.toJson(),
      'bikeManagement': instance.bikeManagement.toJson(),
      'intersectionWaythrough': instance.intersectionWaythrough.toJson(),
    };

const _$IntersectionTypeDTOEnumMap = {
  IntersectionTypeDTO.t: 't',
  IntersectionTypeDTO.x: 'x',
  IntersectionTypeDTO.roundabout: 'roundabout',
  IntersectionTypeDTO.complex: 'complex',
};

_$IntersectionManagementDTOImpl _$$IntersectionManagementDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$IntersectionManagementDTOImpl(
      giveWay: json['giveWay'] as bool,
      stop: json['stop'] as bool,
      trafficLights: json['trafficLights'] as bool,
      rightPriority: json['rightPriority'] as bool,
    );

Map<String, dynamic> _$$IntersectionManagementDTOImplToJson(
        _$IntersectionManagementDTOImpl instance) =>
    <String, dynamic>{
      'giveWay': instance.giveWay,
      'stop': instance.stop,
      'trafficLights': instance.trafficLights,
      'rightPriority': instance.rightPriority,
    };

_$BikeManagementDTOImpl _$$BikeManagementDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$BikeManagementDTOImpl(
      bikeSpace: json['bikeSpace'] as bool,
      bikeGiveway: json['bikeGiveway'] as bool,
      other: json['other'] as bool,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$BikeManagementDTOImplToJson(
        _$BikeManagementDTOImpl instance) =>
    <String, dynamic>{
      'bikeSpace': instance.bikeSpace,
      'bikeGiveway': instance.bikeGiveway,
      'other': instance.other,
      'comment': instance.comment,
    };

_$IntersectionWaythroughDTOImpl _$$IntersectionWaythroughDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$IntersectionWaythroughDTOImpl(
      specificWaythrough: json['specificWaythrough'] as bool,
      walkwayWaythrough: json['walkwayWaythrough'] as bool,
      none: json['none'] as bool,
      other: json['other'] as bool,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$IntersectionWaythroughDTOImplToJson(
        _$IntersectionWaythroughDTOImpl instance) =>
    <String, dynamic>{
      'specificWaythrough': instance.specificWaythrough,
      'walkwayWaythrough': instance.walkwayWaythrough,
      'none': instance.none,
      'other': instance.other,
      'comment': instance.comment,
    };
