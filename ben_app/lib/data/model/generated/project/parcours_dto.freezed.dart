// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../project/parcours_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParcoursDTO _$ParcoursDTOFromJson(Map<String, dynamic> json) {
  return _ParcoursDTO.fromJson(json);
}

/// @nodoc
mixin _$ParcoursDTO {
  String get name => throw _privateConstructorUsedError;
  List<String> get ways => throw _privateConstructorUsedError;
  List<String> get municipalities => throw _privateConstructorUsedError;
  List<SectionDTO> get sections => throw _privateConstructorUsedError;
  List<IntersectionDTO> get intersections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcoursDTOCopyWith<ParcoursDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcoursDTOCopyWith<$Res> {
  factory $ParcoursDTOCopyWith(
          ParcoursDTO value, $Res Function(ParcoursDTO) then) =
      _$ParcoursDTOCopyWithImpl<$Res, ParcoursDTO>;
  @useResult
  $Res call(
      {String name,
      List<String> ways,
      List<String> municipalities,
      List<SectionDTO> sections,
      List<IntersectionDTO> intersections});
}

/// @nodoc
class _$ParcoursDTOCopyWithImpl<$Res, $Val extends ParcoursDTO>
    implements $ParcoursDTOCopyWith<$Res> {
  _$ParcoursDTOCopyWithImpl(this._value, this._then);

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
              as List<SectionDTO>,
      intersections: null == intersections
          ? _value.intersections
          : intersections // ignore: cast_nullable_to_non_nullable
              as List<IntersectionDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParcoursDTOImplCopyWith<$Res>
    implements $ParcoursDTOCopyWith<$Res> {
  factory _$$ParcoursDTOImplCopyWith(
          _$ParcoursDTOImpl value, $Res Function(_$ParcoursDTOImpl) then) =
      __$$ParcoursDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<String> ways,
      List<String> municipalities,
      List<SectionDTO> sections,
      List<IntersectionDTO> intersections});
}

/// @nodoc
class __$$ParcoursDTOImplCopyWithImpl<$Res>
    extends _$ParcoursDTOCopyWithImpl<$Res, _$ParcoursDTOImpl>
    implements _$$ParcoursDTOImplCopyWith<$Res> {
  __$$ParcoursDTOImplCopyWithImpl(
      _$ParcoursDTOImpl _value, $Res Function(_$ParcoursDTOImpl) _then)
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
    return _then(_$ParcoursDTOImpl(
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
              as List<SectionDTO>,
      intersections: null == intersections
          ? _value._intersections
          : intersections // ignore: cast_nullable_to_non_nullable
              as List<IntersectionDTO>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ParcoursDTOImpl implements _ParcoursDTO {
  const _$ParcoursDTOImpl(
      {required this.name,
      required final List<String> ways,
      required final List<String> municipalities,
      required final List<SectionDTO> sections,
      required final List<IntersectionDTO> intersections})
      : _ways = ways,
        _municipalities = municipalities,
        _sections = sections,
        _intersections = intersections;

  factory _$ParcoursDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcoursDTOImplFromJson(json);

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

  final List<SectionDTO> _sections;
  @override
  List<SectionDTO> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  final List<IntersectionDTO> _intersections;
  @override
  List<IntersectionDTO> get intersections {
    if (_intersections is EqualUnmodifiableListView) return _intersections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_intersections);
  }

  @override
  String toString() {
    return 'ParcoursDTO(name: $name, ways: $ways, municipalities: $municipalities, sections: $sections, intersections: $intersections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcoursDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._ways, _ways) &&
            const DeepCollectionEquality()
                .equals(other._municipalities, _municipalities) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality()
                .equals(other._intersections, _intersections));
  }

  @JsonKey(ignore: true)
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
  _$$ParcoursDTOImplCopyWith<_$ParcoursDTOImpl> get copyWith =>
      __$$ParcoursDTOImplCopyWithImpl<_$ParcoursDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcoursDTOImplToJson(
      this,
    );
  }
}

abstract class _ParcoursDTO implements ParcoursDTO {
  const factory _ParcoursDTO(
      {required final String name,
      required final List<String> ways,
      required final List<String> municipalities,
      required final List<SectionDTO> sections,
      required final List<IntersectionDTO> intersections}) = _$ParcoursDTOImpl;

  factory _ParcoursDTO.fromJson(Map<String, dynamic> json) =
      _$ParcoursDTOImpl.fromJson;

  @override
  String get name;
  @override
  List<String> get ways;
  @override
  List<String> get municipalities;
  @override
  List<SectionDTO> get sections;
  @override
  List<IntersectionDTO> get intersections;
  @override
  @JsonKey(ignore: true)
  _$$ParcoursDTOImplCopyWith<_$ParcoursDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
