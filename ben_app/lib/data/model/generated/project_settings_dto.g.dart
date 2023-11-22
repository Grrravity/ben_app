// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../project_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectSettingsDTOImpl _$$ProjectSettingsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectSettingsDTOImpl(
      sectionPictureSetting: SectionSettingsDTO.fromJson(
          json['sectionPictureSetting'] as Map<String, dynamic>),
      intersectionPictureSetting: SectionSettingsDTO.fromJson(
          json['intersectionPictureSetting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProjectSettingsDTOImplToJson(
        _$ProjectSettingsDTOImpl instance) =>
    <String, dynamic>{
      'sectionPictureSetting': instance.sectionPictureSetting.toJson(),
      'intersectionPictureSetting':
          instance.intersectionPictureSetting.toJson(),
    };
