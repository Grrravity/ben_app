// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../pages/project/create/cubit/project_create_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectCreateState {
  StringInput get projectName => throw _privateConstructorUsedError;
  MapIntInput get sectionPictureSetting => throw _privateConstructorUsedError;
  MapIntInput get intersectionPictureSetting =>
      throw _privateConstructorUsedError;
  List<PlatformFile>? get files => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectCreateStateCopyWith<ProjectCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCreateStateCopyWith<$Res> {
  factory $ProjectCreateStateCopyWith(
          ProjectCreateState value, $Res Function(ProjectCreateState) then) =
      _$ProjectCreateStateCopyWithImpl<$Res, ProjectCreateState>;
  @useResult
  $Res call(
      {StringInput projectName,
      MapIntInput sectionPictureSetting,
      MapIntInput intersectionPictureSetting,
      List<PlatformFile>? files});
}

/// @nodoc
class _$ProjectCreateStateCopyWithImpl<$Res, $Val extends ProjectCreateState>
    implements $ProjectCreateStateCopyWith<$Res> {
  _$ProjectCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? sectionPictureSetting = null,
    Object? intersectionPictureSetting = null,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as StringInput,
      sectionPictureSetting: null == sectionPictureSetting
          ? _value.sectionPictureSetting
          : sectionPictureSetting // ignore: cast_nullable_to_non_nullable
              as MapIntInput,
      intersectionPictureSetting: null == intersectionPictureSetting
          ? _value.intersectionPictureSetting
          : intersectionPictureSetting // ignore: cast_nullable_to_non_nullable
              as MapIntInput,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectCreateStateImplCopyWith<$Res>
    implements $ProjectCreateStateCopyWith<$Res> {
  factory _$$ProjectCreateStateImplCopyWith(_$ProjectCreateStateImpl value,
          $Res Function(_$ProjectCreateStateImpl) then) =
      __$$ProjectCreateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringInput projectName,
      MapIntInput sectionPictureSetting,
      MapIntInput intersectionPictureSetting,
      List<PlatformFile>? files});
}

/// @nodoc
class __$$ProjectCreateStateImplCopyWithImpl<$Res>
    extends _$ProjectCreateStateCopyWithImpl<$Res, _$ProjectCreateStateImpl>
    implements _$$ProjectCreateStateImplCopyWith<$Res> {
  __$$ProjectCreateStateImplCopyWithImpl(_$ProjectCreateStateImpl _value,
      $Res Function(_$ProjectCreateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? sectionPictureSetting = null,
    Object? intersectionPictureSetting = null,
    Object? files = freezed,
  }) {
    return _then(_$ProjectCreateStateImpl(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as StringInput,
      sectionPictureSetting: null == sectionPictureSetting
          ? _value.sectionPictureSetting
          : sectionPictureSetting // ignore: cast_nullable_to_non_nullable
              as MapIntInput,
      intersectionPictureSetting: null == intersectionPictureSetting
          ? _value.intersectionPictureSetting
          : intersectionPictureSetting // ignore: cast_nullable_to_non_nullable
              as MapIntInput,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>?,
    ));
  }
}

/// @nodoc

class _$ProjectCreateStateImpl extends _ProjectCreateState {
  const _$ProjectCreateStateImpl(
      {required this.projectName,
      required this.sectionPictureSetting,
      required this.intersectionPictureSetting,
      final List<PlatformFile>? files})
      : _files = files,
        super._();

  @override
  final StringInput projectName;
  @override
  final MapIntInput sectionPictureSetting;
  @override
  final MapIntInput intersectionPictureSetting;
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
    return 'ProjectCreateState(projectName: $projectName, sectionPictureSetting: $sectionPictureSetting, intersectionPictureSetting: $intersectionPictureSetting, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectCreateStateImpl &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.sectionPictureSetting, sectionPictureSetting) ||
                other.sectionPictureSetting == sectionPictureSetting) &&
            (identical(other.intersectionPictureSetting,
                    intersectionPictureSetting) ||
                other.intersectionPictureSetting ==
                    intersectionPictureSetting) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectName,
      sectionPictureSetting,
      intersectionPictureSetting,
      const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectCreateStateImplCopyWith<_$ProjectCreateStateImpl> get copyWith =>
      __$$ProjectCreateStateImplCopyWithImpl<_$ProjectCreateStateImpl>(
          this, _$identity);
}

abstract class _ProjectCreateState extends ProjectCreateState {
  const factory _ProjectCreateState(
      {required final StringInput projectName,
      required final MapIntInput sectionPictureSetting,
      required final MapIntInput intersectionPictureSetting,
      final List<PlatformFile>? files}) = _$ProjectCreateStateImpl;
  const _ProjectCreateState._() : super._();

  @override
  StringInput get projectName;
  @override
  MapIntInput get sectionPictureSetting;
  @override
  MapIntInput get intersectionPictureSetting;
  @override
  List<PlatformFile>? get files;
  @override
  @JsonKey(ignore: true)
  _$$ProjectCreateStateImplCopyWith<_$ProjectCreateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
