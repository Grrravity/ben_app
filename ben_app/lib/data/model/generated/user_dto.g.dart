// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentUserDtoImpl _$$CurrentUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$CurrentUserDtoImpl(
      uuid: json['id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$CurrentUserDtoImplToJson(
        _$CurrentUserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.uuid,
      'username': instance.username,
    };

_$MemberUserDtoImpl _$$MemberUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$MemberUserDtoImpl(
      uuid: json['id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$MemberUserDtoImplToJson(_$MemberUserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.uuid,
      'username': instance.username,
    };

_$CreationUserDtoImpl _$$CreationUserDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreationUserDtoImpl(
      username: json['username'] as String,
    );

Map<String, dynamic> _$$CreationUserDtoImplToJson(
        _$CreationUserDtoImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
    };
