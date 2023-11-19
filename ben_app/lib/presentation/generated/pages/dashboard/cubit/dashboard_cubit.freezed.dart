// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../pages/dashboard/cubit/dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  List<Project> get projects => throw _privateConstructorUsedError;
  StringInput get projectName => throw _privateConstructorUsedError;
  MapIntInput get pictureSectionParams => throw _privateConstructorUsedError;
  List<PlatformFile>? get files => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {List<Project> projects,
      StringInput projectName,
      MapIntInput pictureSectionParams,
      List<PlatformFile>? files});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? projectName = null,
    Object? pictureSectionParams = null,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as StringInput,
      pictureSectionParams: null == pictureSectionParams
          ? _value.pictureSectionParams
          : pictureSectionParams // ignore: cast_nullable_to_non_nullable
              as MapIntInput,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(_$DashboardStateImpl value,
          $Res Function(_$DashboardStateImpl) then) =
      __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Project> projects,
      StringInput projectName,
      MapIntInput pictureSectionParams,
      List<PlatformFile>? files});
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
      _$DashboardStateImpl _value, $Res Function(_$DashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? projectName = null,
    Object? pictureSectionParams = null,
    Object? files = freezed,
  }) {
    return _then(_$DashboardStateImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as StringInput,
      pictureSectionParams: null == pictureSectionParams
          ? _value.pictureSectionParams
          : pictureSectionParams // ignore: cast_nullable_to_non_nullable
              as MapIntInput,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>?,
    ));
  }
}

/// @nodoc

class _$DashboardStateImpl extends _DashboardState {
  const _$DashboardStateImpl(
      {required final List<Project> projects,
      required this.projectName,
      required this.pictureSectionParams,
      final List<PlatformFile>? files})
      : _projects = projects,
        _files = files,
        super._();

  final List<Project> _projects;
  @override
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  final StringInput projectName;
  @override
  final MapIntInput pictureSectionParams;
  final List<PlatformFile>? _files;
  @override
  List<PlatformFile>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DashboardState(projects: $projects, projectName: $projectName, pictureSectionParams: $pictureSectionParams, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.pictureSectionParams, pictureSectionParams) ||
                other.pictureSectionParams == pictureSectionParams) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      projectName,
      pictureSectionParams,
      const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
          this, _$identity);
}

abstract class _DashboardState extends DashboardState {
  const factory _DashboardState(
      {required final List<Project> projects,
      required final StringInput projectName,
      required final MapIntInput pictureSectionParams,
      final List<PlatformFile>? files}) = _$DashboardStateImpl;
  const _DashboardState._() : super._();

  @override
  List<Project> get projects;
  @override
  StringInput get projectName;
  @override
  MapIntInput get pictureSectionParams;
  @override
  List<PlatformFile>? get files;
  @override
  @JsonKey(ignore: true)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
