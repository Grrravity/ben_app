// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../create_project_dto.cmd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProjectCmdDTOImpl _$$CreateProjectCmdDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProjectCmdDTOImpl(
      content:
          ProjectContentDTO.fromJson(json['content'] as Map<String, dynamic>),
      settings:
          ProjectSettingsDTO.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateProjectCmdDTOImplToJson(
        _$CreateProjectCmdDTOImpl instance) =>
    <String, dynamic>{
      'content': instance.content.toJson(),
      'settings': instance.settings.toJson(),
    };
