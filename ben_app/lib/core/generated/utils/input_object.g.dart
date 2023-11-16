// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../utils/input_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordInput _$PasswordInputFromJson(Map<String, dynamic> json) =>
    PasswordInput(
      value: json['value'] as String?,
    )..failure = $enumDecodeNullable(_$InputFailureEnumMap, json['failure']);

Map<String, dynamic> _$PasswordInputToJson(PasswordInput instance) =>
    <String, dynamic>{
      'value': instance.value,
      'failure': _$InputFailureEnumMap[instance.failure],
    };

const _$InputFailureEnumMap = {
  InputFailure.emailRequired: 'emailRequired',
  InputFailure.strongPasswordRequired: 'strongPasswordRequired',
  InputFailure.strongPasswordLength: 'strongPasswordLength',
  InputFailure.fieldRequired: 'fieldRequired',
  InputFailure.fieldLength: 'fieldLength',
  InputFailure.fieldForbiddenCharacter: 'fieldForbiddenCharacter',
  InputFailure.dateInvalid: 'dateInvalid',
  InputFailure.listNotFound: 'listNotFound',
  InputFailure.passwordDontMatch: 'passwordDontMatch',
  InputFailure.other: 'other',
  InputFailure.intValidation: 'intValidation',
};

StringInput _$StringInputFromJson(Map<String, dynamic> json) => StringInput(
      value: json['value'] as String?,
    )..failure = $enumDecodeNullable(_$InputFailureEnumMap, json['failure']);

Map<String, dynamic> _$StringInputToJson(StringInput instance) =>
    <String, dynamic>{
      'value': instance.value,
      'failure': _$InputFailureEnumMap[instance.failure],
    };

BoolInput _$BoolInputFromJson(Map<String, dynamic> json) => BoolInput(
      value: json['value'] as bool?,
    )..failure = $enumDecodeNullable(_$InputFailureEnumMap, json['failure']);

Map<String, dynamic> _$BoolInputToJson(BoolInput instance) => <String, dynamic>{
      'value': instance.value,
      'failure': _$InputFailureEnumMap[instance.failure],
    };

EmailInput _$EmailInputFromJson(Map<String, dynamic> json) => EmailInput(
      value: json['value'] as String?,
    )..failure = $enumDecodeNullable(_$InputFailureEnumMap, json['failure']);

Map<String, dynamic> _$EmailInputToJson(EmailInput instance) =>
    <String, dynamic>{
      'value': instance.value,
      'failure': _$InputFailureEnumMap[instance.failure],
    };

DateInput _$DateInputFromJson(Map<String, dynamic> json) => DateInput(
      value: json['value'] == null
          ? null
          : DateTime.parse(json['value'] as String),
    )..failure = $enumDecodeNullable(_$InputFailureEnumMap, json['failure']);

Map<String, dynamic> _$DateInputToJson(DateInput instance) => <String, dynamic>{
      'value': instance.value?.toIso8601String(),
      'failure': _$InputFailureEnumMap[instance.failure],
    };

MapIntInput _$MapIntInputFromJson(Map<String, dynamic> json) => MapIntInput(
      value: (json['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
    )..failure = $enumDecodeNullable(_$InputFailureEnumMap, json['failure']);

Map<String, dynamic> _$MapIntInputToJson(MapIntInput instance) =>
    <String, dynamic>{
      'value': instance.value,
      'failure': _$InputFailureEnumMap[instance.failure],
    };
