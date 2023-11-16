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
  Map<String, int> get pictureSections => throw _privateConstructorUsedError;

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
  $Res call({Map<String, int> pictureSections});
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
    Object? pictureSections = null,
  }) {
    return _then(_value.copyWith(
      pictureSections: null == pictureSections
          ? _value.pictureSections
          : pictureSections // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
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
  $Res call({Map<String, int> pictureSections});
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
    Object? pictureSections = null,
  }) {
    return _then(_$ProjectSettingsImpl(
      pictureSections: null == pictureSections
          ? _value._pictureSections
          : pictureSections // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

class _$ProjectSettingsImpl implements _ProjectSettings {
  const _$ProjectSettingsImpl({required final Map<String, int> pictureSections})
      : _pictureSections = pictureSections;

  final Map<String, int> _pictureSections;
  @override
  Map<String, int> get pictureSections {
    if (_pictureSections is EqualUnmodifiableMapView) return _pictureSections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pictureSections);
  }

  @override
  String toString() {
    return 'ProjectSettings(pictureSections: $pictureSections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSettingsImpl &&
            const DeepCollectionEquality()
                .equals(other._pictureSections, _pictureSections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pictureSections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSettingsImplCopyWith<_$ProjectSettingsImpl> get copyWith =>
      __$$ProjectSettingsImplCopyWithImpl<_$ProjectSettingsImpl>(
          this, _$identity);
}

abstract class _ProjectSettings implements ProjectSettings {
  const factory _ProjectSettings(
          {required final Map<String, int> pictureSections}) =
      _$ProjectSettingsImpl;

  @override
  Map<String, int> get pictureSections;
  @override
  @JsonKey(ignore: true)
  _$$ProjectSettingsImplCopyWith<_$ProjectSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
