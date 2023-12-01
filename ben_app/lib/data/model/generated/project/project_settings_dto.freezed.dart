// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../project/project_settings_dto.dart';

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
  List<PicturesSettingsDTO> get sectionPictureSetting =>
      throw _privateConstructorUsedError;
  List<PicturesSettingsDTO> get intersectionPictureSetting =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {List<PicturesSettingsDTO> sectionPictureSetting,
      List<PicturesSettingsDTO> intersectionPictureSetting});
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
    Object? sectionPictureSetting = null,
    Object? intersectionPictureSetting = null,
  }) {
    return _then(_value.copyWith(
      sectionPictureSetting: null == sectionPictureSetting
          ? _value.sectionPictureSetting
          : sectionPictureSetting // ignore: cast_nullable_to_non_nullable
              as List<PicturesSettingsDTO>,
      intersectionPictureSetting: null == intersectionPictureSetting
          ? _value.intersectionPictureSetting
          : intersectionPictureSetting // ignore: cast_nullable_to_non_nullable
              as List<PicturesSettingsDTO>,
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
  $Res call(
      {List<PicturesSettingsDTO> sectionPictureSetting,
      List<PicturesSettingsDTO> intersectionPictureSetting});
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
    Object? sectionPictureSetting = null,
    Object? intersectionPictureSetting = null,
  }) {
    return _then(_$ProjectSettingsDTOImpl(
      sectionPictureSetting: null == sectionPictureSetting
          ? _value._sectionPictureSetting
          : sectionPictureSetting // ignore: cast_nullable_to_non_nullable
              as List<PicturesSettingsDTO>,
      intersectionPictureSetting: null == intersectionPictureSetting
          ? _value._intersectionPictureSetting
          : intersectionPictureSetting // ignore: cast_nullable_to_non_nullable
              as List<PicturesSettingsDTO>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProjectSettingsDTOImpl implements _ProjectSettingsDTO {
  const _$ProjectSettingsDTOImpl(
      {required final List<PicturesSettingsDTO> sectionPictureSetting,
      required final List<PicturesSettingsDTO> intersectionPictureSetting})
      : _sectionPictureSetting = sectionPictureSetting,
        _intersectionPictureSetting = intersectionPictureSetting;

  factory _$ProjectSettingsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectSettingsDTOImplFromJson(json);

  final List<PicturesSettingsDTO> _sectionPictureSetting;
  @override
  List<PicturesSettingsDTO> get sectionPictureSetting {
    if (_sectionPictureSetting is EqualUnmodifiableListView)
      return _sectionPictureSetting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sectionPictureSetting);
  }

  final List<PicturesSettingsDTO> _intersectionPictureSetting;
  @override
  List<PicturesSettingsDTO> get intersectionPictureSetting {
    if (_intersectionPictureSetting is EqualUnmodifiableListView)
      return _intersectionPictureSetting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_intersectionPictureSetting);
  }

  @override
  String toString() {
    return 'ProjectSettingsDTO(sectionPictureSetting: $sectionPictureSetting, intersectionPictureSetting: $intersectionPictureSetting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSettingsDTOImpl &&
            const DeepCollectionEquality()
                .equals(other._sectionPictureSetting, _sectionPictureSetting) &&
            const DeepCollectionEquality().equals(
                other._intersectionPictureSetting,
                _intersectionPictureSetting));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sectionPictureSetting),
      const DeepCollectionEquality().hash(_intersectionPictureSetting));

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
      {required final List<PicturesSettingsDTO> sectionPictureSetting,
      required final List<PicturesSettingsDTO>
          intersectionPictureSetting}) = _$ProjectSettingsDTOImpl;

  factory _ProjectSettingsDTO.fromJson(Map<String, dynamic> json) =
      _$ProjectSettingsDTOImpl.fromJson;

  @override
  List<PicturesSettingsDTO> get sectionPictureSetting;
  @override
  List<PicturesSettingsDTO> get intersectionPictureSetting;
  @override
  @JsonKey(ignore: true)
  _$$ProjectSettingsDTOImplCopyWith<_$ProjectSettingsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
