// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../project/pictures_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PicturesSettings {
  String get name => throw _privateConstructorUsedError;
  int get pictureCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PicturesSettingsCopyWith<PicturesSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PicturesSettingsCopyWith<$Res> {
  factory $PicturesSettingsCopyWith(
          PicturesSettings value, $Res Function(PicturesSettings) then) =
      _$PicturesSettingsCopyWithImpl<$Res, PicturesSettings>;
  @useResult
  $Res call({String name, int pictureCount});
}

/// @nodoc
class _$PicturesSettingsCopyWithImpl<$Res, $Val extends PicturesSettings>
    implements $PicturesSettingsCopyWith<$Res> {
  _$PicturesSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? pictureCount = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureCount: null == pictureCount
          ? _value.pictureCount
          : pictureCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PicturesSettingsImplCopyWith<$Res>
    implements $PicturesSettingsCopyWith<$Res> {
  factory _$$PicturesSettingsImplCopyWith(_$PicturesSettingsImpl value,
          $Res Function(_$PicturesSettingsImpl) then) =
      __$$PicturesSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int pictureCount});
}

/// @nodoc
class __$$PicturesSettingsImplCopyWithImpl<$Res>
    extends _$PicturesSettingsCopyWithImpl<$Res, _$PicturesSettingsImpl>
    implements _$$PicturesSettingsImplCopyWith<$Res> {
  __$$PicturesSettingsImplCopyWithImpl(_$PicturesSettingsImpl _value,
      $Res Function(_$PicturesSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? pictureCount = null,
  }) {
    return _then(_$PicturesSettingsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureCount: null == pictureCount
          ? _value.pictureCount
          : pictureCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PicturesSettingsImpl implements _PicturesSettings {
  const _$PicturesSettingsImpl(
      {required this.name, required this.pictureCount});

  @override
  final String name;
  @override
  final int pictureCount;

  @override
  String toString() {
    return 'PicturesSettings(name: $name, pictureCount: $pictureCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PicturesSettingsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pictureCount, pictureCount) ||
                other.pictureCount == pictureCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, pictureCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PicturesSettingsImplCopyWith<_$PicturesSettingsImpl> get copyWith =>
      __$$PicturesSettingsImplCopyWithImpl<_$PicturesSettingsImpl>(
          this, _$identity);
}

abstract class _PicturesSettings implements PicturesSettings {
  const factory _PicturesSettings(
      {required final String name,
      required final int pictureCount}) = _$PicturesSettingsImpl;

  @override
  String get name;
  @override
  int get pictureCount;
  @override
  @JsonKey(ignore: true)
  _$$PicturesSettingsImplCopyWith<_$PicturesSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
