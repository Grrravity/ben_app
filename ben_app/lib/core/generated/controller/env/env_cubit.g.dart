// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../controller/env/env_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoadingStateImpl _$$LoadingStateImplFromJson(Map<String, dynamic> json) =>
    _$LoadingStateImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingStateImplToJson(_$LoadingStateImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoadedStateImpl _$$LoadedStateImplFromJson(Map<String, dynamic> json) =>
    _$LoadedStateImpl(
      env: $enumDecode(_$EnvTypeEnumMap, json['env']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedStateImplToJson(_$LoadedStateImpl instance) =>
    <String, dynamic>{
      'env': _$EnvTypeEnumMap[instance.env]!,
      'runtimeType': instance.$type,
    };

const _$EnvTypeEnumMap = {
  EnvType.prod: 'prod',
  EnvType.inte: 'inte',
  EnvType.dev: 'dev',
};
