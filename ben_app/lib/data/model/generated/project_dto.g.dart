// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDTOImpl _$$ProjectDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProjectDTOImpl(
      content:
          ProjectContentDTO.fromJson(json['content'] as Map<String, dynamic>),
      settings:
          ProjectSettingsDTO.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProjectDTOImplToJson(_$ProjectDTOImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'settings': instance.settings,
    };
