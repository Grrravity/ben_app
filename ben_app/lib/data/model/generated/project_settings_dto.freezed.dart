// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../project_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectSettingsDTO _$ProjectSettingsDTOFromJson(Map<String, dynamic> json) {
  return _ProjectSettingsDTO.fromJson(json);
}

/// @nodoc
mixin _$ProjectSettingsDTO {
  Map<String, int> get pictureSections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectSettingsDTOCopyWith<ProjectSettingsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSettingsDTOCopyWith<$Res> {
  factory $ProjectSettingsDTOCopyWith(
          ProjectSettingsDTO value, $Res Function(ProjectSettingsDTO) then) =
      _$ProjectSettingsDTOCopyWithImpl<$Res, ProjectSettingsDTO>;
  @useResult
  $Res call({Map<String, int> pictureSections});
}

/// @nodoc
class _$ProjectSettingsDTOCopyWithImpl<$Res, $Val extends ProjectSettingsDTO>
    implements $ProjectSettingsDTOCopyWith<$Res> {
  _$ProjectSettingsDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$ProjectSettingsDTOImplCopyWith<$Res>
    implements $ProjectSettingsDTOCopyWith<$Res> {
  factory _$$ProjectSettingsDTOImplCopyWith(_$ProjectSettingsDTOImpl value,
          $Res Function(_$ProjectSettingsDTOImpl) then) =
      __$$ProjectSettingsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, int> pictureSections});
}

/// @nodoc
class __$$ProjectSettingsDTOImplCopyWithImpl<$Res>
    extends _$ProjectSettingsDTOCopyWithImpl<$Res, _$ProjectSettingsDTOImpl>
    implements _$$ProjectSettingsDTOImplCopyWith<$Res> {
  __$$ProjectSettingsDTOImplCopyWithImpl(_$ProjectSettingsDTOImpl _value,
      $Res Function(_$ProjectSettingsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictureSections = null,
  }) {
    return _then(_$ProjectSettingsDTOImpl(
      pictureSections: null == pictureSections
          ? _value._pictureSections
          : pictureSections // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectSettingsDTOImpl implements _ProjectSettingsDTO {
  const _$ProjectSettingsDTOImpl(
      {required final Map<String, int> pictureSections})
      : _pictureSections = pictureSections;

  factory _$ProjectSettingsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectSettingsDTOImplFromJson(json);

  final Map<String, int> _pictureSections;
  @override
  Map<String, int> get pictureSections {
    if (_pictureSections is EqualUnmodifiableMapView) return _pictureSections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pictureSections);
  }

  @override
  String toString() {
    return 'ProjectSettingsDTO(pictureSections: $pictureSections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSettingsDTOImpl &&
            const DeepCollectionEquality()
                .equals(other._pictureSections, _pictureSections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pictureSections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSettingsDTOImplCopyWith<_$ProjectSettingsDTOImpl> get copyWith =>
      __$$ProjectSettingsDTOImplCopyWithImpl<_$ProjectSettingsDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectSettingsDTOImplToJson(
      this,
    );
  }
}

abstract class _ProjectSettingsDTO implements ProjectSettingsDTO {
  const factory _ProjectSettingsDTO(
          {required final Map<String, int> pictureSections}) =
      _$ProjectSettingsDTOImpl;

  factory _ProjectSettingsDTO.fromJson(Map<String, dynamic> json) =
      _$ProjectSettingsDTOImpl.fromJson;

  @override
  Map<String, int> get pictureSections;
  @override
  @JsonKey(ignore: true)
  _$$ProjectSettingsDTOImplCopyWith<_$ProjectSettingsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
