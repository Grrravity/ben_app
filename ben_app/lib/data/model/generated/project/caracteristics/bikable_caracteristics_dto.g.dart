// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../project/caracteristics/bikable_caracteristics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BikabledCaracteristicsDTOImpl _$$BikabledCaracteristicsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$BikabledCaracteristicsDTOImpl(
      cycleManagementCaracteristics: CycleManagementCaracteristicsDTO.fromJson(
          json['cycleManagementCaracteristics'] as Map<String, dynamic>),
      roadcareCaracteristics: RoadcareCaracteristicsDTO.fromJson(
          json['roadcareCaracteristics'] as Map<String, dynamic>),
      roadQualityCaracteristics: RoadQualityCaracteristicsDTO.fromJson(
          json['roadQualityCaracteristics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BikabledCaracteristicsDTOImplToJson(
        _$BikabledCaracteristicsDTOImpl instance) =>
    <String, dynamic>{
      'cycleManagementCaracteristics':
          instance.cycleManagementCaracteristics.toJson(),
      'roadcareCaracteristics': instance.roadcareCaracteristics.toJson(),
      'roadQualityCaracteristics': instance.roadQualityCaracteristics.toJson(),
    };

_$CycleManagementCaracteristicsDTOImpl
    _$$CycleManagementCaracteristicsDTOImplFromJson(
            Map<String, dynamic> json) =>
        _$CycleManagementCaracteristicsDTOImpl(
          walkArea: json['walkArea'] as bool,
          meetArea: json['meetArea'] as bool,
          kmh30Area: json['kmh30Area'] as bool,
          bikeAndBusWay: json['bikeAndBusWay'] as bool,
          bikePath: json['bikePath'] as bool,
          chaucidou: json['chaucidou'] as bool,
          writtenBikepath: json['writtenBikepath'] as bool,
          bikePathway: json['bikePathway'] as bool,
          bikeRoad: json['bikeRoad'] as bool,
          bothWayBikepathSeparated: json['bothWayBikepathSeparated'] as bool,
          bothWayBikepathNotSeparated:
              json['bothWayBikepathNotSeparated'] as bool,
          oneWayPath: json['oneWayPath'] as bool,
          bothWayPath: json['bothWayPath'] as bool,
          greenWayPath: json['greenWayPath'] as bool,
          bridge: json['bridge'] as bool,
          underground: json['underground'] as bool,
        );

Map<String, dynamic> _$$CycleManagementCaracteristicsDTOImplToJson(
        _$CycleManagementCaracteristicsDTOImpl instance) =>
    <String, dynamic>{
      'walkArea': instance.walkArea,
      'meetArea': instance.meetArea,
      'kmh30Area': instance.kmh30Area,
      'bikeAndBusWay': instance.bikeAndBusWay,
      'bikePath': instance.bikePath,
      'chaucidou': instance.chaucidou,
      'writtenBikepath': instance.writtenBikepath,
      'bikePathway': instance.bikePathway,
      'bikeRoad': instance.bikeRoad,
      'bothWayBikepathSeparated': instance.bothWayBikepathSeparated,
      'bothWayBikepathNotSeparated': instance.bothWayBikepathNotSeparated,
      'oneWayPath': instance.oneWayPath,
      'bothWayPath': instance.bothWayPath,
      'greenWayPath': instance.greenWayPath,
      'bridge': instance.bridge,
      'underground': instance.underground,
    };

_$RoadcareCaracteristicsDTOImpl _$$RoadcareCaracteristicsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RoadcareCaracteristicsDTOImpl(
      pavedRoad: json['pavedRoad'] as bool,
      concrete: json['concrete'] as bool,
      stabilized: json['stabilized'] as bool,
    );

Map<String, dynamic> _$$RoadcareCaracteristicsDTOImplToJson(
        _$RoadcareCaracteristicsDTOImpl instance) =>
    <String, dynamic>{
      'pavedRoad': instance.pavedRoad,
      'concrete': instance.concrete,
      'stabilized': instance.stabilized,
    };

_$RoadQualityCaracteristicsDTOImpl _$$RoadQualityCaracteristicsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RoadQualityCaracteristicsDTOImpl(
      newOrAlmost: json['newOrAlmost'] as bool,
      good: json['good'] as bool,
      slightlyDamaged: json['slightlyDamaged'] as bool,
      heavilyDamaged: json['heavilyDamaged'] as bool,
    );

Map<String, dynamic> _$$RoadQualityCaracteristicsDTOImplToJson(
        _$RoadQualityCaracteristicsDTOImpl instance) =>
    <String, dynamic>{
      'newOrAlmost': instance.newOrAlmost,
      'good': instance.good,
      'slightlyDamaged': instance.slightlyDamaged,
      'heavilyDamaged': instance.heavilyDamaged,
    };
