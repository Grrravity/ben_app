// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../project/parcours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Parcours {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get ways => throw _privateConstructorUsedError;
  List<String> get municipalities => throw _privateConstructorUsedError;
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
      {String id,
      String name,
      List<String> ways,
      List<String> municipalities,
      List<Section> sections,
      List<Intersection> intersections});
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
    Object? id = null,
    Object? name = null,
    Object? ways = null,
    Object? municipalities = null,
    Object? sections = null,
    Object? intersections = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ways: null == ways
          ? _value.ways
          : ways // ignore: cast_nullable_to_non_nullable
              as List<String>,
      municipalities: null == municipalities
          ? _value.municipalities
          : municipalities // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {String id,
      String name,
      List<String> ways,
      List<String> municipalities,
      List<Section> sections,
      List<Intersection> intersections});
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
    Object? id = null,
    Object? name = null,
    Object? ways = null,
    Object? municipalities = null,
    Object? sections = null,
    Object? intersections = null,
  }) {
    return _then(_$ParcoursImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ways: null == ways
          ? _value._ways
          : ways // ignore: cast_nullable_to_non_nullable
              as List<String>,
      municipalities: null == municipalities
          ? _value._municipalities
          : municipalities // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {required this.id,
      required this.name,
      required final List<String> ways,
      required final List<String> municipalities,
      required final List<Section> sections,
      required final List<Intersection> intersections})
      : _ways = ways,
        _municipalities = municipalities,
        _sections = sections,
        _intersections = intersections;

  @override
  final String id;
  @override
  final String name;
  final List<String> _ways;
  @override
  List<String> get ways {
    if (_ways is EqualUnmodifiableListView) return _ways;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ways);
  }

  final List<String> _municipalities;
  @override
  List<String> get municipalities {
    if (_municipalities is EqualUnmodifiableListView) return _municipalities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_municipalities);
  }

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
    return 'Parcours(id: $id, name: $name, ways: $ways, municipalities: $municipalities, sections: $sections, intersections: $intersections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcoursImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._ways, _ways) &&
            const DeepCollectionEquality()
                .equals(other._municipalities, _municipalities) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality()
                .equals(other._intersections, _intersections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_ways),
      const DeepCollectionEquality().hash(_municipalities),
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
      {required final String id,
      required final String name,
      required final List<String> ways,
      required final List<String> municipalities,
      required final List<Section> sections,
      required final List<Intersection> intersections}) = _$ParcoursImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String> get ways;
  @override
  List<String> get municipalities;
  @override
  List<Section> get sections;
  @override
  List<Intersection> get intersections;
  @override
  @JsonKey(ignore: true)
  _$$ParcoursImplCopyWith<_$ParcoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParcoursCmd {
  String get name => throw _privateConstructorUsedError;
  List<String> get ways => throw _privateConstructorUsedError;
  List<String> get municipalities => throw _privateConstructorUsedError;
  List<Section> get sections => throw _privateConstructorUsedError;
  List<Intersection> get intersections => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParcoursCmdCopyWith<ParcoursCmd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcoursCmdCopyWith<$Res> {
  factory $ParcoursCmdCopyWith(
          ParcoursCmd value, $Res Function(ParcoursCmd) then) =
      _$ParcoursCmdCopyWithImpl<$Res, ParcoursCmd>;
  @useResult
  $Res call(
      {String name,
      List<String> ways,
      List<String> municipalities,
      List<Section> sections,
      List<Intersection> intersections});
}

/// @nodoc
class _$ParcoursCmdCopyWithImpl<$Res, $Val extends ParcoursCmd>
    implements $ParcoursCmdCopyWith<$Res> {
  _$ParcoursCmdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ways = null,
    Object? municipalities = null,
    Object? sections = null,
    Object? intersections = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ways: null == ways
          ? _value.ways
          : ways // ignore: cast_nullable_to_non_nullable
              as List<String>,
      municipalities: null == municipalities
          ? _value.municipalities
          : municipalities // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$ParcoursCmdImplCopyWith<$Res>
    implements $ParcoursCmdCopyWith<$Res> {
  factory _$$ParcoursCmdImplCopyWith(
          _$ParcoursCmdImpl value, $Res Function(_$ParcoursCmdImpl) then) =
      __$$ParcoursCmdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<String> ways,
      List<String> municipalities,
      List<Section> sections,
      List<Intersection> intersections});
}

/// @nodoc
class __$$ParcoursCmdImplCopyWithImpl<$Res>
    extends _$ParcoursCmdCopyWithImpl<$Res, _$ParcoursCmdImpl>
    implements _$$ParcoursCmdImplCopyWith<$Res> {
  __$$ParcoursCmdImplCopyWithImpl(
      _$ParcoursCmdImpl _value, $Res Function(_$ParcoursCmdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ways = null,
    Object? municipalities = null,
    Object? sections = null,
    Object? intersections = null,
  }) {
    return _then(_$ParcoursCmdImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ways: null == ways
          ? _value._ways
          : ways // ignore: cast_nullable_to_non_nullable
              as List<String>,
      municipalities: null == municipalities
          ? _value._municipalities
          : municipalities // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

class _$ParcoursCmdImpl implements _ParcoursCmd {
  const _$ParcoursCmdImpl(
      {required this.name,
      required final List<String> ways,
      required final List<String> municipalities,
      required final List<Section> sections,
      required final List<Intersection> intersections})
      : _ways = ways,
        _municipalities = municipalities,
        _sections = sections,
        _intersections = intersections;

  @override
  final String name;
  final List<String> _ways;
  @override
  List<String> get ways {
    if (_ways is EqualUnmodifiableListView) return _ways;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ways);
  }

  final List<String> _municipalities;
  @override
  List<String> get municipalities {
    if (_municipalities is EqualUnmodifiableListView) return _municipalities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_municipalities);
  }

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
    return 'ParcoursCmd(name: $name, ways: $ways, municipalities: $municipalities, sections: $sections, intersections: $intersections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcoursCmdImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._ways, _ways) &&
            const DeepCollectionEquality()
                .equals(other._municipalities, _municipalities) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality()
                .equals(other._intersections, _intersections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_ways),
      const DeepCollectionEquality().hash(_municipalities),
      const DeepCollectionEquality().hash(_sections),
      const DeepCollectionEquality().hash(_intersections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcoursCmdImplCopyWith<_$ParcoursCmdImpl> get copyWith =>
      __$$ParcoursCmdImplCopyWithImpl<_$ParcoursCmdImpl>(this, _$identity);
}

abstract class _ParcoursCmd implements ParcoursCmd {
  const factory _ParcoursCmd(
      {required final String name,
      required final List<String> ways,
      required final List<String> municipalities,
      required final List<Section> sections,
      required final List<Intersection> intersections}) = _$ParcoursCmdImpl;

  @override
  String get name;
  @override
  List<String> get ways;
  @override
  List<String> get municipalities;
  @override
  List<Section> get sections;
  @override
  List<Intersection> get intersections;
  @override
  @JsonKey(ignore: true)
  _$$ParcoursCmdImplCopyWith<_$ParcoursCmdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
