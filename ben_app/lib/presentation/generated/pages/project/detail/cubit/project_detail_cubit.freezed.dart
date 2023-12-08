// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../pages/project/detail/cubit/project_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectDetailState {
  Project get project => throw _privateConstructorUsedError;
  List<Parcours> get parcours => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectDetailStateCopyWith<ProjectDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailStateCopyWith<$Res> {
  factory $ProjectDetailStateCopyWith(
          ProjectDetailState value, $Res Function(ProjectDetailState) then) =
      _$ProjectDetailStateCopyWithImpl<$Res, ProjectDetailState>;
  @useResult
  $Res call({Project project, List<Parcours> parcours});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class _$ProjectDetailStateCopyWithImpl<$Res, $Val extends ProjectDetailState>
    implements $ProjectDetailStateCopyWith<$Res> {
  _$ProjectDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? parcours = null,
  }) {
    return _then(_value.copyWith(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      parcours: null == parcours
          ? _value.parcours
          : parcours // ignore: cast_nullable_to_non_nullable
              as List<Parcours>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectDetailStateImplCopyWith<$Res>
    implements $ProjectDetailStateCopyWith<$Res> {
  factory _$$ProjectDetailStateImplCopyWith(_$ProjectDetailStateImpl value,
          $Res Function(_$ProjectDetailStateImpl) then) =
      __$$ProjectDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Project project, List<Parcours> parcours});

  @override
  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$ProjectDetailStateImplCopyWithImpl<$Res>
    extends _$ProjectDetailStateCopyWithImpl<$Res, _$ProjectDetailStateImpl>
    implements _$$ProjectDetailStateImplCopyWith<$Res> {
  __$$ProjectDetailStateImplCopyWithImpl(_$ProjectDetailStateImpl _value,
      $Res Function(_$ProjectDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? parcours = null,
  }) {
    return _then(_$ProjectDetailStateImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      parcours: null == parcours
          ? _value._parcours
          : parcours // ignore: cast_nullable_to_non_nullable
              as List<Parcours>,
    ));
  }
}

/// @nodoc

class _$ProjectDetailStateImpl extends _ProjectDetailState {
  const _$ProjectDetailStateImpl(
      {required this.project, required final List<Parcours> parcours})
      : _parcours = parcours,
        super._();

  @override
  final Project project;
  final List<Parcours> _parcours;
  @override
  List<Parcours> get parcours {
    if (_parcours is EqualUnmodifiableListView) return _parcours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parcours);
  }

  @override
  String toString() {
    return 'ProjectDetailState(project: $project, parcours: $parcours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDetailStateImpl &&
            (identical(other.project, project) || other.project == project) &&
            const DeepCollectionEquality().equals(other._parcours, _parcours));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, project, const DeepCollectionEquality().hash(_parcours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDetailStateImplCopyWith<_$ProjectDetailStateImpl> get copyWith =>
      __$$ProjectDetailStateImplCopyWithImpl<_$ProjectDetailStateImpl>(
          this, _$identity);
}

abstract class _ProjectDetailState extends ProjectDetailState {
  const factory _ProjectDetailState(
      {required final Project project,
      required final List<Parcours> parcours}) = _$ProjectDetailStateImpl;
  const _ProjectDetailState._() : super._();

  @override
  Project get project;
  @override
  List<Parcours> get parcours;
  @override
  @JsonKey(ignore: true)
  _$$ProjectDetailStateImplCopyWith<_$ProjectDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
