// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../parcours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Parcours {
  String get name => throw _privateConstructorUsedError;
  List<Section> get sections => throw _privateConstructorUsedError;
  List<Intersection> get intersections => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParcoursCopyWith<Parcours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcoursCopyWith<$Res> {
  factory $ParcoursCopyWith(Parcours value, $Res Function(Parcours) then) =
      _$ParcoursCopyWithImpl<$Res, Parcours>;
  @useResult
  $Res call(
      {String name, List<Section> sections, List<Intersection> intersections});
}

/// @nodoc
class _$ParcoursCopyWithImpl<$Res, $Val extends Parcours>
    implements $ParcoursCopyWith<$Res> {
  _$ParcoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sections = null,
    Object? intersections = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
      intersections: null == intersections
          ? _value.intersections
          : intersections // ignore: cast_nullable_to_non_nullable
              as List<Intersection>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParcoursImplCopyWith<$Res>
    implements $ParcoursCopyWith<$Res> {
  factory _$$ParcoursImplCopyWith(
          _$ParcoursImpl value, $Res Function(_$ParcoursImpl) then) =
      __$$ParcoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, List<Section> sections, List<Intersection> intersections});
}

/// @nodoc
class __$$ParcoursImplCopyWithImpl<$Res>
    extends _$ParcoursCopyWithImpl<$Res, _$ParcoursImpl>
    implements _$$ParcoursImplCopyWith<$Res> {
  __$$ParcoursImplCopyWithImpl(
      _$ParcoursImpl _value, $Res Function(_$ParcoursImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sections = null,
    Object? intersections = null,
  }) {
    return _then(_$ParcoursImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
      intersections: null == intersections
          ? _value._intersections
          : intersections // ignore: cast_nullable_to_non_nullable
              as List<Intersection>,
    ));
  }
}

/// @nodoc

class _$ParcoursImpl implements _Parcours {
  const _$ParcoursImpl(
      {required this.name,
      required final List<Section> sections,
      required final List<Intersection> intersections})
      : _sections = sections,
        _intersections = intersections;

  @override
  final String name;
  final List<Section> _sections;
  @override
  List<Section> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  final List<Intersection> _intersections;
  @override
  List<Intersection> get intersections {
    if (_intersections is EqualUnmodifiableListView) return _intersections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_intersections);
  }

  @override
  String toString() {
    return 'Parcours(name: $name, sections: $sections, intersections: $intersections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcoursImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality()
                .equals(other._intersections, _intersections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_sections),
      const DeepCollectionEquality().hash(_intersections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcoursImplCopyWith<_$ParcoursImpl> get copyWith =>
      __$$ParcoursImplCopyWithImpl<_$ParcoursImpl>(this, _$identity);
}

abstract class _Parcours implements Parcours {
  const factory _Parcours(
      {required final String name,
      required final List<Section> sections,
      required final List<Intersection> intersections}) = _$ParcoursImpl;

  @override
  String get name;
  @override
  List<Section> get sections;
  @override
  List<Intersection> get intersections;
  @override
  @JsonKey(ignore: true)
  _$$ParcoursImplCopyWith<_$ParcoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
