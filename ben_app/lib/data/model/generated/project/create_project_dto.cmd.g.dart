// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../project/create_project_dto.cmd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProjectCmdDTOImpl _$$CreateProjectCmdDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProjectCmdDTOImpl(
      name: json['name'] as String,
      parcours: (json['parcours'] as List<dynamic>)
          .map((e) => ParcoursDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      settings:
          ProjectSettingsDTO.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateProjectCmdDTOImplToJson(
        _$CreateProjectCmdDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parcours': instance.parcours.map((e) => e.toJson()).toList(),
      'settings': instance.settings.toJson(),
    };
