// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../pages/auth/cubit/auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthFormDataImpl _$$AuthFormDataImplFromJson(Map<String, dynamic> json) =>
    _$AuthFormDataImpl(
      email: EmailInput.fromJson(json['email'] as Map<String, dynamic>),
      password:
          PasswordInput.fromJson(json['password'] as Map<String, dynamic>),
      confirmPassword: PasswordInput.fromJson(
          json['confirmPassword'] as Map<String, dynamic>),
      hidden: json['hidden'] as bool,
    );

Map<String, dynamic> _$$AuthFormDataImplToJson(_$AuthFormDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'hidden': instance.hidden,
    };
