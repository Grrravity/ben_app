// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../project_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectDTO _$ProjectDTOFromJson(Map<String, dynamic> json) {
  return _ProjectDTO.fromJson(json);
}

/// @nodoc
mixin _$ProjectDTO {
  ProjectContentDTO get content => throw _privateConstructorUsedError;
  ProjectSettingsDTO get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectDTOCopyWith<ProjectDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDTOCopyWith<$Res> {
  factory $ProjectDTOCopyWith(
          ProjectDTO value, $Res Function(ProjectDTO) then) =
      _$ProjectDTOCopyWithImpl<$Res, ProjectDTO>;
  @useResult
  $Res call({ProjectContentDTO content, ProjectSettingsDTO settings});

  $ProjectContentDTOCopyWith<$Res> get content;
  $ProjectSettingsDTOCopyWith<$Res> get settings;
}

/// @nodoc
class _$ProjectDTOCopyWithImpl<$Res, $Val extends ProjectDTO>
    implements $ProjectDTOCopyWith<$Res> {
  _$ProjectDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ProjectContentDTO,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ProjectSettingsDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectContentDTOCopyWith<$Res> get content {
    return $ProjectContentDTOCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectSettingsDTOCopyWith<$Res> get settings {
    return $ProjectSettingsDTOCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectDTOImplCopyWith<$Res>
    implements $ProjectDTOCopyWith<$Res> {
  factory _$$ProjectDTOImplCopyWith(
          _$ProjectDTOImpl value, $Res Function(_$ProjectDTOImpl) then) =
      __$$ProjectDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectContentDTO content, ProjectSettingsDTO settings});

  @override
  $ProjectContentDTOCopyWith<$Res> get content;
  @override
  $ProjectSettingsDTOCopyWith<$Res> get settings;
}

/// @nodoc
class __$$ProjectDTOImplCopyWithImpl<$Res>
    extends _$ProjectDTOCopyWithImpl<$Res, _$ProjectDTOImpl>
    implements _$$ProjectDTOImplCopyWith<$Res> {
  __$$ProjectDTOImplCopyWithImpl(
      _$ProjectDTOImpl _value, $Res Function(_$ProjectDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? settings = null,
  }) {
    return _then(_$ProjectDTOImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ProjectContentDTO,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ProjectSettingsDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectDTOImpl implements _ProjectDTO {
  const _$ProjectDTOImpl({required this.content, required this.settings});

  factory _$ProjectDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectDTOImplFromJson(json);

  @override
  final ProjectContentDTO content;
  @override
  final ProjectSettingsDTO settings;

  @override
  String toString() {
    return 'ProjectDTO(content: $content, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDTOImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDTOImplCopyWith<_$ProjectDTOImpl> get copyWith =>
      __$$ProjectDTOImplCopyWithImpl<_$ProjectDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectDTOImplToJson(
      this,
    );
  }
}

abstract class _ProjectDTO implements ProjectDTO {
  const factory _ProjectDTO(
      {required final ProjectContentDTO content,
      required final ProjectSettingsDTO settings}) = _$ProjectDTOImpl;

  factory _ProjectDTO.fromJson(Map<String, dynamic> json) =
      _$ProjectDTOImpl.fromJson;

  @override
  ProjectContentDTO get content;
  @override
  ProjectSettingsDTO get settings;
  @override
  @JsonKey(ignore: true)
  _$$ProjectDTOImplCopyWith<_$ProjectDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
