// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../project/pictures_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PicturesSettingsDTO _$PicturesSettingsDTOFromJson(Map<String, dynamic> json) {
  return _PicturesSettingsDTO.fromJson(json);
}

/// @nodoc
mixin _$PicturesSettingsDTO {
  String get name => throw _privateConstructorUsedError;
  int get pictureCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PicturesSettingsDTOCopyWith<PicturesSettingsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PicturesSettingsDTOCopyWith<$Res> {
  factory $PicturesSettingsDTOCopyWith(
          PicturesSettingsDTO value, $Res Function(PicturesSettingsDTO) then) =
      _$PicturesSettingsDTOCopyWithImpl<$Res, PicturesSettingsDTO>;
  @useResult
  $Res call({String name, int pictureCount});
}

/// @nodoc
class _$PicturesSettingsDTOCopyWithImpl<$Res, $Val extends PicturesSettingsDTO>
    implements $PicturesSettingsDTOCopyWith<$Res> {
  _$PicturesSettingsDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$PicturesSettingsDTOImplCopyWith<$Res>
    implements $PicturesSettingsDTOCopyWith<$Res> {
  factory _$$PicturesSettingsDTOImplCopyWith(_$PicturesSettingsDTOImpl value,
          $Res Function(_$PicturesSettingsDTOImpl) then) =
      __$$PicturesSettingsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int pictureCount});
}

/// @nodoc
class __$$PicturesSettingsDTOImplCopyWithImpl<$Res>
    extends _$PicturesSettingsDTOCopyWithImpl<$Res, _$PicturesSettingsDTOImpl>
    implements _$$PicturesSettingsDTOImplCopyWith<$Res> {
  __$$PicturesSettingsDTOImplCopyWithImpl(_$PicturesSettingsDTOImpl _value,
      $Res Function(_$PicturesSettingsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? pictureCount = null,
  }) {
    return _then(_$PicturesSettingsDTOImpl(
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
class _$PicturesSettingsDTOImpl implements _PicturesSettingsDTO {
  const _$PicturesSettingsDTOImpl(
      {required this.name, required this.pictureCount});

  factory _$PicturesSettingsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PicturesSettingsDTOImplFromJson(json);

  @override
  final String name;
  @override
  final int pictureCount;

  @override
  String toString() {
    return 'PicturesSettingsDTO(name: $name, pictureCount: $pictureCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PicturesSettingsDTOImpl &&
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
  _$$PicturesSettingsDTOImplCopyWith<_$PicturesSettingsDTOImpl> get copyWith =>
      __$$PicturesSettingsDTOImplCopyWithImpl<_$PicturesSettingsDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PicturesSettingsDTOImplToJson(
      this,
    );
  }
}

abstract class _PicturesSettingsDTO implements PicturesSettingsDTO {
  const factory _PicturesSettingsDTO(
      {required final String name,
      required final int pictureCount}) = _$PicturesSettingsDTOImpl;

  factory _PicturesSettingsDTO.fromJson(Map<String, dynamic> json) =
      _$PicturesSettingsDTOImpl.fromJson;

  @override
  String get name;
  @override
  int get pictureCount;
  @override
  @JsonKey(ignore: true)
  _$$PicturesSettingsDTOImplCopyWith<_$PicturesSettingsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
