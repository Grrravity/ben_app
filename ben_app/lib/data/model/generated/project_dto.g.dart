// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDTOImpl _$$ProjectDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProjectDTOImpl(
      id: json['id'] as String,
      content:
          ProjectContentDTO.fromJson(json['content'] as Map<String, dynamic>),
      settings:
          ProjectSettingsDTO.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProjectDTOImplToJson(_$ProjectDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content.toJson(),
      'settings': instance.settings.toJson(),
    };
