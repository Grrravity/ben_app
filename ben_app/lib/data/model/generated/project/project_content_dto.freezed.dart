// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../project/project_content_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectContentDTO _$ProjectContentDTOFromJson(Map<String, dynamic> json) {
  return _ProjectContentDTO.fromJson(json);
}

/// @nodoc
mixin _$ProjectContentDTO {
  String get name => throw _privateConstructorUsedError;
  List<ParcoursDTO> get parcours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectContentDTOCopyWith<ProjectContentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectContentDTOCopyWith<$Res> {
  factory $ProjectContentDTOCopyWith(
          ProjectContentDTO value, $Res Function(ProjectContentDTO) then) =
      _$ProjectContentDTOCopyWithImpl<$Res, ProjectContentDTO>;
  @useResult
  $Res call({String name, List<ParcoursDTO> parcours});
}

/// @nodoc
class _$ProjectContentDTOCopyWithImpl<$Res, $Val extends ProjectContentDTO>
    implements $ProjectContentDTOCopyWith<$Res> {
  _$ProjectContentDTOCopyWithImpl(this._value, this._then);

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
              as List<ParcoursDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectContentDTOImplCopyWith<$Res>
    implements $ProjectContentDTOCopyWith<$Res> {
  factory _$$ProjectContentDTOImplCopyWith(_$ProjectContentDTOImpl value,
          $Res Function(_$ProjectContentDTOImpl) then) =
      __$$ProjectContentDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<ParcoursDTO> parcours});
}

/// @nodoc
class __$$ProjectContentDTOImplCopyWithImpl<$Res>
    extends _$ProjectContentDTOCopyWithImpl<$Res, _$ProjectContentDTOImpl>
    implements _$$ProjectContentDTOImplCopyWith<$Res> {
  __$$ProjectContentDTOImplCopyWithImpl(_$ProjectContentDTOImpl _value,
      $Res Function(_$ProjectContentDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? parcours = null,
  }) {
    return _then(_$ProjectContentDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parcours: null == parcours
          ? _value._parcours
          : parcours // ignore: cast_nullable_to_non_nullable
              as List<ParcoursDTO>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProjectContentDTOImpl implements _ProjectContentDTO {
  const _$ProjectContentDTOImpl(
      {required this.name, required final List<ParcoursDTO> parcours})
      : _parcours = parcours;

  factory _$ProjectContentDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectContentDTOImplFromJson(json);

  @override
  final String name;
  final List<ParcoursDTO> _parcours;
  @override
  List<ParcoursDTO> get parcours {
    if (_parcours is EqualUnmodifiableListView) return _parcours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parcours);
  }

  @override
  String toString() {
    return 'ProjectContentDTO(name: $name, parcours: $parcours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectContentDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._parcours, _parcours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_parcours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectContentDTOImplCopyWith<_$ProjectContentDTOImpl> get copyWith =>
      __$$ProjectContentDTOImplCopyWithImpl<_$ProjectContentDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectContentDTOImplToJson(
      this,
    );
  }
}

abstract class _ProjectContentDTO implements ProjectContentDTO {
  const factory _ProjectContentDTO(
      {required final String name,
      required final List<ParcoursDTO> parcours}) = _$ProjectContentDTOImpl;

  factory _ProjectContentDTO.fromJson(Map<String, dynamic> json) =
      _$ProjectContentDTOImpl.fromJson;

  @override
  String get name;
  @override
  List<ParcoursDTO> get parcours;
  @override
  @JsonKey(ignore: true)
  _$$ProjectContentDTOImplCopyWith<_$ProjectContentDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
