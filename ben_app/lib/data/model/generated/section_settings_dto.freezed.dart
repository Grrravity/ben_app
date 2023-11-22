// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../section_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionSettingsDTO _$SectionSettingsDTOFromJson(Map<String, dynamic> json) {
  return _SectionSettingsDTO.fromJson(json);
}

/// @nodoc
mixin _$SectionSettingsDTO {
  String get name => throw _privateConstructorUsedError;
  int get pictureCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionSettingsDTOCopyWith<SectionSettingsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionSettingsDTOCopyWith<$Res> {
  factory $SectionSettingsDTOCopyWith(
          SectionSettingsDTO value, $Res Function(SectionSettingsDTO) then) =
      _$SectionSettingsDTOCopyWithImpl<$Res, SectionSettingsDTO>;
  @useResult
  $Res call({String name, int pictureCount});
}

/// @nodoc
class _$SectionSettingsDTOCopyWithImpl<$Res, $Val extends SectionSettingsDTO>
    implements $SectionSettingsDTOCopyWith<$Res> {
  _$SectionSettingsDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$SectionSettingsDTOImplCopyWith<$Res>
    implements $SectionSettingsDTOCopyWith<$Res> {
  factory _$$SectionSettingsDTOImplCopyWith(_$SectionSettingsDTOImpl value,
          $Res Function(_$SectionSettingsDTOImpl) then) =
      __$$SectionSettingsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int pictureCount});
}

/// @nodoc
class __$$SectionSettingsDTOImplCopyWithImpl<$Res>
    extends _$SectionSettingsDTOCopyWithImpl<$Res, _$SectionSettingsDTOImpl>
    implements _$$SectionSettingsDTOImplCopyWith<$Res> {
  __$$SectionSettingsDTOImplCopyWithImpl(_$SectionSettingsDTOImpl _value,
      $Res Function(_$SectionSettingsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? pictureCount = null,
  }) {
    return _then(_$SectionSettingsDTOImpl(
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
@JsonSerializable()
class _$SectionSettingsDTOImpl implements _SectionSettingsDTO {
  const _$SectionSettingsDTOImpl(
      {required this.name, required this.pictureCount});

  factory _$SectionSettingsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionSettingsDTOImplFromJson(json);

  @override
  final String name;
  @override
  final int pictureCount;

  @override
  String toString() {
    return 'SectionSettingsDTO(name: $name, pictureCount: $pictureCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionSettingsDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pictureCount, pictureCount) ||
                other.pictureCount == pictureCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, pictureCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionSettingsDTOImplCopyWith<_$SectionSettingsDTOImpl> get copyWith =>
      __$$SectionSettingsDTOImplCopyWithImpl<_$SectionSettingsDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionSettingsDTOImplToJson(
      this,
    );
  }
}

abstract class _SectionSettingsDTO implements SectionSettingsDTO {
  const factory _SectionSettingsDTO(
      {required final String name,
      required final int pictureCount}) = _$SectionSettingsDTOImpl;

  factory _SectionSettingsDTO.fromJson(Map<String, dynamic> json) =
      _$SectionSettingsDTOImpl.fromJson;

  @override
  String get name;
  @override
  int get pictureCount;
  @override
  @JsonKey(ignore: true)
  _$$SectionSettingsDTOImplCopyWith<_$SectionSettingsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
