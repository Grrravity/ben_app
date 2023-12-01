// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../project/intersection/intersection_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntersectionDTOImpl _$$IntersectionDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$IntersectionDTOImpl(
      index: json['index'] as int,
      name: json['name'] as String,
      ways: (json['ways'] as List<dynamic>).map((e) => e as String).toList(),
      municipalities: (json['municipalities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      illustration: json['illustration'] as String,
      globalCaracteristics: GlobalIntersectionCaracteristicsDTO.fromJson(
          json['globalCaracteristics'] as Map<String, dynamic>),
      bikableCaracteristics: BikabledCaracteristicsDTO.fromJson(
          json['bikableCaracteristics'] as Map<String, dynamic>),
      content: (json['content'] as List<dynamic>)
          .map(
              (e) => IntersectionContentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$IntersectionDTOImplToJson(
        _$IntersectionDTOImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'ways': instance.ways,
      'municipalities': instance.municipalities,
      'illustration': instance.illustration,
      'globalCaracteristics': instance.globalCaracteristics.toJson(),
      'bikableCaracteristics': instance.bikableCaracteristics.toJson(),
      'content': instance.content.map((e) => e.toJson()).toList(),
      'comment': instance.comment,
    };

_$IntersectionContentDTOImpl _$$IntersectionContentDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$IntersectionContentDTOImpl(
      sectionName: json['sectionName'] as String,
      pictureQuantity: json['pictureQuantity'] as int,
      pictures: (json['pictures'] as List<dynamic>)
          .map((e) => CapturesDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IntersectionContentDTOImplToJson(
        _$IntersectionContentDTOImpl instance) =>
    <String, dynamic>{
      'sectionName': instance.sectionName,
      'pictureQuantity': instance.pictureQuantity,
      'pictures': instance.pictures.map((e) => e.toJson()).toList(),
    };
