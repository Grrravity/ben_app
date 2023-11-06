// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../jwt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JwtDtoImpl _$$JwtDtoImplFromJson(Map<String, dynamic> json) => _$JwtDtoImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$JwtDtoImplToJson(_$JwtDtoImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
