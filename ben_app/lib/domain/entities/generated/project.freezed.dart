// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Project {
  String get id => throw _privateConstructorUsedError;
  ProjectContent get content => throw _privateConstructorUsedError;
  ProjectSettings get settings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call({String id, ProjectContent content, ProjectSettings settings});

  $ProjectContentCopyWith<$Res> get content;
  $ProjectSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ProjectContent,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ProjectSettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectContentCopyWith<$Res> get content {
    return $ProjectContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectSettingsCopyWith<$Res> get settings {
    return $ProjectSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, ProjectContent content, ProjectSettings settings});

  @override
  $ProjectContentCopyWith<$Res> get content;
  @override
  $ProjectSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? settings = null,
  }) {
    return _then(_$ProjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ProjectContent,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ProjectSettings,
    ));
  }
}

/// @nodoc

class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {required this.id, required this.content, required this.settings});

  @override
  final String id;
  @override
  final ProjectContent content;
  @override
  final ProjectSettings settings;

  @override
  String toString() {
    return 'Project(id: $id, content: $content, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, content, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);
}

abstract class _Project implements Project {
  const factory _Project(
      {required final String id,
      required final ProjectContent content,
      required final ProjectSettings settings}) = _$ProjectImpl;

  @override
  String get id;
  @override
  ProjectContent get content;
  @override
  ProjectSettings get settings;
  @override
  @JsonKey(ignore: true)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateProjectCmd {
  ProjectContent get content => throw _privateConstructorUsedError;
  ProjectSettings get settings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateProjectCmdCopyWith<CreateProjectCmd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectCmdCopyWith<$Res> {
  factory $CreateProjectCmdCopyWith(
          CreateProjectCmd value, $Res Function(CreateProjectCmd) then) =
      _$CreateProjectCmdCopyWithImpl<$Res, CreateProjectCmd>;
  @useResult
  $Res call({ProjectContent content, ProjectSettings settings});

  $ProjectContentCopyWith<$Res> get content;
  $ProjectSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$CreateProjectCmdCopyWithImpl<$Res, $Val extends CreateProjectCmd>
    implements $CreateProjectCmdCopyWith<$Res> {
  _$CreateProjectCmdCopyWithImpl(this._value, this._then);

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
              as ProjectContent,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ProjectSettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectContentCopyWith<$Res> get content {
    return $ProjectContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectSettingsCopyWith<$Res> get settings {
    return $ProjectSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateProjectCmdImplCopyWith<$Res>
    implements $CreateProjectCmdCopyWith<$Res> {
  factory _$$CreateProjectCmdImplCopyWith(_$CreateProjectCmdImpl value,
          $Res Function(_$CreateProjectCmdImpl) then) =
      __$$CreateProjectCmdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectContent content, ProjectSettings settings});

  @override
  $ProjectContentCopyWith<$Res> get content;
  @override
  $ProjectSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$CreateProjectCmdImplCopyWithImpl<$Res>
    extends _$CreateProjectCmdCopyWithImpl<$Res, _$CreateProjectCmdImpl>
    implements _$$CreateProjectCmdImplCopyWith<$Res> {
  __$$CreateProjectCmdImplCopyWithImpl(_$CreateProjectCmdImpl _value,
      $Res Function(_$CreateProjectCmdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? settings = null,
  }) {
    return _then(_$CreateProjectCmdImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ProjectContent,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ProjectSettings,
    ));
  }
}

/// @nodoc

class _$CreateProjectCmdImpl implements _CreateProjectCmd {
  const _$CreateProjectCmdImpl({required this.content, required this.settings});

  @override
  final ProjectContent content;
  @override
  final ProjectSettings settings;

  @override
  String toString() {
    return 'CreateProjectCmd(content: $content, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProjectCmdImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProjectCmdImplCopyWith<_$CreateProjectCmdImpl> get copyWith =>
      __$$CreateProjectCmdImplCopyWithImpl<_$CreateProjectCmdImpl>(
          this, _$identity);
}

abstract class _CreateProjectCmd implements CreateProjectCmd {
  const factory _CreateProjectCmd(
      {required final ProjectContent content,
      required final ProjectSettings settings}) = _$CreateProjectCmdImpl;

  @override
  ProjectContent get content;
  @override
  ProjectSettings get settings;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectCmdImplCopyWith<_$CreateProjectCmdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
