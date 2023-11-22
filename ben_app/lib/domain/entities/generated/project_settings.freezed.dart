// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../project_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectSettings {
  SectionSettings get sectionPictureSetting =>
      throw _privateConstructorUsedError;
  SectionSettings get intersectionPictureSetting =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectSettingsCopyWith<ProjectSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSettingsCopyWith<$Res> {
  factory $ProjectSettingsCopyWith(
          ProjectSettings value, $Res Function(ProjectSettings) then) =
      _$ProjectSettingsCopyWithImpl<$Res, ProjectSettings>;
  @useResult
  $Res call(
      {SectionSettings sectionPictureSetting,
      SectionSettings intersectionPictureSetting});

  $SectionSettingsCopyWith<$Res> get sectionPictureSetting;
  $SectionSettingsCopyWith<$Res> get intersectionPictureSetting;
}

/// @nodoc
class _$ProjectSettingsCopyWithImpl<$Res, $Val extends ProjectSettings>
    implements $ProjectSettingsCopyWith<$Res> {
  _$ProjectSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionPictureSetting = null,
    Object? intersectionPictureSetting = null,
  }) {
    return _then(_value.copyWith(
      sectionPictureSetting: null == sectionPictureSetting
          ? _value.sectionPictureSetting
          : sectionPictureSetting // ignore: cast_nullable_to_non_nullable
              as SectionSettings,
      intersectionPictureSetting: null == intersectionPictureSetting
          ? _value.intersectionPictureSetting
          : intersectionPictureSetting // ignore: cast_nullable_to_non_nullable
              as SectionSettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SectionSettingsCopyWith<$Res> get sectionPictureSetting {
    return $SectionSettingsCopyWith<$Res>(_value.sectionPictureSetting,
        (value) {
      return _then(_value.copyWith(sectionPictureSetting: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SectionSettingsCopyWith<$Res> get intersectionPictureSetting {
    return $SectionSettingsCopyWith<$Res>(_value.intersectionPictureSetting,
        (value) {
      return _then(_value.copyWith(intersectionPictureSetting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectSettingsImplCopyWith<$Res>
    implements $ProjectSettingsCopyWith<$Res> {
  factory _$$ProjectSettingsImplCopyWith(_$ProjectSettingsImpl value,
          $Res Function(_$ProjectSettingsImpl) then) =
      __$$ProjectSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SectionSettings sectionPictureSetting,
      SectionSettings intersectionPictureSetting});

  @override
  $SectionSettingsCopyWith<$Res> get sectionPictureSetting;
  @override
  $SectionSettingsCopyWith<$Res> get intersectionPictureSetting;
}

/// @nodoc
class __$$ProjectSettingsImplCopyWithImpl<$Res>
    extends _$ProjectSettingsCopyWithImpl<$Res, _$ProjectSettingsImpl>
    implements _$$ProjectSettingsImplCopyWith<$Res> {
  __$$ProjectSettingsImplCopyWithImpl(
      _$ProjectSettingsImpl _value, $Res Function(_$ProjectSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionPictureSetting = null,
    Object? intersectionPictureSetting = null,
  }) {
    return _then(_$ProjectSettingsImpl(
      sectionPictureSetting: null == sectionPictureSetting
          ? _value.sectionPictureSetting
          : sectionPictureSetting // ignore: cast_nullable_to_non_nullable
              as SectionSettings,
      intersectionPictureSetting: null == intersectionPictureSetting
          ? _value.intersectionPictureSetting
          : intersectionPictureSetting // ignore: cast_nullable_to_non_nullable
              as SectionSettings,
    ));
  }
}

/// @nodoc

class _$ProjectSettingsImpl implements _ProjectSettings {
  const _$ProjectSettingsImpl(
      {required this.sectionPictureSetting,
      required this.intersectionPictureSetting});

  @override
  final SectionSettings sectionPictureSetting;
  @override
  final SectionSettings intersectionPictureSetting;

  @override
  String toString() {
    return 'ProjectSettings(sectionPictureSetting: $sectionPictureSetting, intersectionPictureSetting: $intersectionPictureSetting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSettingsImpl &&
            (identical(other.sectionPictureSetting, sectionPictureSetting) ||
                other.sectionPictureSetting == sectionPictureSetting) &&
            (identical(other.intersectionPictureSetting,
                    intersectionPictureSetting) ||
                other.intersectionPictureSetting ==
                    intersectionPictureSetting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sectionPictureSetting, intersectionPictureSetting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSettingsImplCopyWith<_$ProjectSettingsImpl> get copyWith =>
      __$$ProjectSettingsImplCopyWithImpl<_$ProjectSettingsImpl>(
          this, _$identity);
}

abstract class _ProjectSettings implements ProjectSettings {
  const factory _ProjectSettings(
          {required final SectionSettings sectionPictureSetting,
          required final SectionSettings intersectionPictureSetting}) =
      _$ProjectSettingsImpl;

  @override
  SectionSettings get sectionPictureSetting;
  @override
  SectionSettings get intersectionPictureSetting;
  @override
  @JsonKey(ignore: true)
  _$$ProjectSettingsImplCopyWith<_$ProjectSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
