// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../intersection_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntersectionDTO _$IntersectionDTOFromJson(Map<String, dynamic> json) {
  return _IntersectionDTO.fromJson(json);
}

/// @nodoc
mixin _$IntersectionDTO {
  String get name => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntersectionDTOCopyWith<IntersectionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntersectionDTOCopyWith<$Res> {
  factory $IntersectionDTOCopyWith(
          IntersectionDTO value, $Res Function(IntersectionDTO) then) =
      _$IntersectionDTOCopyWithImpl<$Res, IntersectionDTO>;
  @useResult
  $Res call({String name, String picture, int? index});
}

/// @nodoc
class _$IntersectionDTOCopyWithImpl<$Res, $Val extends IntersectionDTO>
    implements $IntersectionDTOCopyWith<$Res> {
  _$IntersectionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? picture = null,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntersectionDTOImplCopyWith<$Res>
    implements $IntersectionDTOCopyWith<$Res> {
  factory _$$IntersectionDTOImplCopyWith(_$IntersectionDTOImpl value,
          $Res Function(_$IntersectionDTOImpl) then) =
      __$$IntersectionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String picture, int? index});
}

/// @nodoc
class __$$IntersectionDTOImplCopyWithImpl<$Res>
    extends _$IntersectionDTOCopyWithImpl<$Res, _$IntersectionDTOImpl>
    implements _$$IntersectionDTOImplCopyWith<$Res> {
  __$$IntersectionDTOImplCopyWithImpl(
      _$IntersectionDTOImpl _value, $Res Function(_$IntersectionDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? picture = null,
    Object? index = freezed,
  }) {
    return _then(_$IntersectionDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntersectionDTOImpl implements _IntersectionDTO {
  const _$IntersectionDTOImpl(
      {required this.name, required this.picture, this.index});

  factory _$IntersectionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntersectionDTOImplFromJson(json);

  @override
  final String name;
  @override
  final String picture;
  @override
  final int? index;

  @override
  String toString() {
    return 'IntersectionDTO(name: $name, picture: $picture, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntersectionDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, picture, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntersectionDTOImplCopyWith<_$IntersectionDTOImpl> get copyWith =>
      __$$IntersectionDTOImplCopyWithImpl<_$IntersectionDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntersectionDTOImplToJson(
      this,
    );
  }
}

abstract class _IntersectionDTO implements IntersectionDTO {
  const factory _IntersectionDTO(
      {required final String name,
      required final String picture,
      final int? index}) = _$IntersectionDTOImpl;

  factory _IntersectionDTO.fromJson(Map<String, dynamic> json) =
      _$IntersectionDTOImpl.fromJson;

  @override
  String get name;
  @override
  String get picture;
  @override
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$$IntersectionDTOImplCopyWith<_$IntersectionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
