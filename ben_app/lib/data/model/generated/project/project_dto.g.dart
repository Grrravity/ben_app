// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../project/project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDTOImpl _$$ProjectDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProjectDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      parcours: (json['parcours'] as List<dynamic>)
          .map((e) => ParcoursDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      settings:
          ProjectSettingsDTO.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProjectDTOImplToJson(_$ProjectDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parcours': instance.parcours.map((e) => e.toJson()).toList(),
      'settings': instance.settings.toJson(),
    };
