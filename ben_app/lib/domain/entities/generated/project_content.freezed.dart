// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../project_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectContent {
  String get name => throw _privateConstructorUsedError;
  List<Parcours> get parcours => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectContentCopyWith<ProjectContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectContentCopyWith<$Res> {
  factory $ProjectContentCopyWith(
          ProjectContent value, $Res Function(ProjectContent) then) =
      _$ProjectContentCopyWithImpl<$Res, ProjectContent>;
  @useResult
  $Res call({String name, List<Parcours> parcours});
}

/// @nodoc
class _$ProjectContentCopyWithImpl<$Res, $Val extends ProjectContent>
    implements $ProjectContentCopyWith<$Res> {
  _$ProjectContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? parcours = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parcours: null == parcours
          ? _value.parcours
          : parcours // ignore: cast_nullable_to_non_nullable
              as List<Parcours>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectContentImplCopyWith<$Res>
    implements $ProjectContentCopyWith<$Res> {
  factory _$$ProjectContentImplCopyWith(_$ProjectContentImpl value,
          $Res Function(_$ProjectContentImpl) then) =
      __$$ProjectContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<Parcours> parcours});
}

/// @nodoc
class __$$ProjectContentImplCopyWithImpl<$Res>
    extends _$ProjectContentCopyWithImpl<$Res, _$ProjectContentImpl>
    implements _$$ProjectContentImplCopyWith<$Res> {
  __$$ProjectContentImplCopyWithImpl(
      _$ProjectContentImpl _value, $Res Function(_$ProjectContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? parcours = null,
  }) {
    return _then(_$ProjectContentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parcours: null == parcours
          ? _value._parcours
          : parcours // ignore: cast_nullable_to_non_nullable
              as List<Parcours>,
    ));
  }
}

/// @nodoc

class _$ProjectContentImpl implements _ProjectContent {
  const _$ProjectContentImpl(
      {required this.name, required final List<Parcours> parcours})
      : _parcours = parcours;

  @override
  final String name;
  final List<Parcours> _parcours;
  @override
  List<Parcours> get parcours {
    if (_parcours is EqualUnmodifiableListView) return _parcours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parcours);
  }

  @override
  String toString() {
    return 'ProjectContent(name: $name, parcours: $parcours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectContentImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._parcours, _parcours));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_parcours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectContentImplCopyWith<_$ProjectContentImpl> get copyWith =>
      __$$ProjectContentImplCopyWithImpl<_$ProjectContentImpl>(
          this, _$identity);
}

abstract class _ProjectContent implements ProjectContent {
  const factory _ProjectContent(
      {required final String name,
      required final List<Parcours> parcours}) = _$ProjectContentImpl;

  @override
  String get name;
  @override
  List<Parcours> get parcours;
  @override
  @JsonKey(ignore: true)
  _$$ProjectContentImplCopyWith<_$ProjectContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
