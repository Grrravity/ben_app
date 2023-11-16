// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../project_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectContentDTOImpl _$$ProjectContentDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectContentDTOImpl(
      name: json['name'] as String,
      parcours: (json['parcours'] as List<dynamic>)
          .map((e) => ParcoursDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProjectContentDTOImplToJson(
        _$ProjectContentDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parcours': instance.parcours,
    };
