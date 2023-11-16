// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../parcours_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParcoursDTOImpl _$$ParcoursDTOImplFromJson(Map<String, dynamic> json) =>
    _$ParcoursDTOImpl(
      name: json['name'] as String,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => SectionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      intersections: (json['intersections'] as List<dynamic>)
          .map((e) => IntersectionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ParcoursDTOImplToJson(_$ParcoursDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sections': instance.sections,
      'intersections': instance.intersections,
    };
