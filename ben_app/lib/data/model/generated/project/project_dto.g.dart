// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../project/project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDTOImpl _$$ProjectDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProjectDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      parcoursReferences: (json['parcoursReferences'] as List<dynamic>)
          .map((e) => const DocumentSerializer()
              .fromJson(e as DocumentReference<Object>))
          .toList(),
      settings:
          ProjectSettingsDTO.fromJson(json['settings'] as Map<String, dynamic>),
      totalSections: json['totalSections'] as int,
      doneSections: json['doneSections'] as int,
      totalIntersections: json['totalIntersections'] as int,
      doneIntersections: json['doneIntersections'] as int,
    );

Map<String, dynamic> _$$ProjectDTOImplToJson(_$ProjectDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parcoursReferences': instance.parcoursReferences
          .map(const DocumentSerializer().toJson)
          .toList(),
      'settings': instance.settings.toJson(),
      'totalSections': instance.totalSections,
      'doneSections': instance.doneSections,
      'totalIntersections': instance.totalIntersections,
      'doneIntersections': instance.doneIntersections,
    };
