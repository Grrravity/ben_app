// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../project/project_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectSettingsDTOImpl _$$ProjectSettingsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectSettingsDTOImpl(
      sectionPictureSetting: (json['sectionPictureSetting'] as List<dynamic>)
          .map((e) => PicturesSettingsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      intersectionPictureSetting: (json['intersectionPictureSetting']
              as List<dynamic>)
          .map((e) => PicturesSettingsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProjectSettingsDTOImplToJson(
        _$ProjectSettingsDTOImpl instance) =>
    <String, dynamic>{
      'sectionPictureSetting':
          instance.sectionPictureSetting.map((e) => e.toJson()).toList(),
      'intersectionPictureSetting':
          instance.intersectionPictureSetting.map((e) => e.toJson()).toList(),
    };
