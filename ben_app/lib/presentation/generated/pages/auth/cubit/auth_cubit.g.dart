// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../pages/auth/cubit/auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthFormDataImpl _$$AuthFormDataImplFromJson(Map<String, dynamic> json) =>
    _$AuthFormDataImpl(
      email: EmailInput.fromJson(json['email'] as Map<String, dynamic>),
      password: StringInput.fromJson(json['password'] as Map<String, dynamic>),
      confirmPassword:
          StringInput.fromJson(json['confirmPassword'] as Map<String, dynamic>),
      hidden: json['hidden'] as bool,
    );

Map<String, dynamic> _$$AuthFormDataImplToJson(_$AuthFormDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email.toJson(),
      'password': instance.password.toJson(),
      'confirmPassword': instance.confirmPassword.toJson(),
      'hidden': instance.hidden,
    };
