// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../section_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionDTO _$SectionDTOFromJson(Map<String, dynamic> json) {
  return _SectionDTO.fromJson(json);
}

/// @nodoc
mixin _$SectionDTO {
  String get name => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionDTOCopyWith<SectionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionDTOCopyWith<$Res> {
  factory $SectionDTOCopyWith(
          SectionDTO value, $Res Function(SectionDTO) then) =
      _$SectionDTOCopyWithImpl<$Res, SectionDTO>;
  @useResult
  $Res call({String name, String picture, int? index});
}

/// @nodoc
class _$SectionDTOCopyWithImpl<$Res, $Val extends SectionDTO>
    implements $SectionDTOCopyWith<$Res> {
  _$SectionDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$SectionDTOImplCopyWith<$Res>
    implements $SectionDTOCopyWith<$Res> {
  factory _$$SectionDTOImplCopyWith(
          _$SectionDTOImpl value, $Res Function(_$SectionDTOImpl) then) =
      __$$SectionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String picture, int? index});
}

/// @nodoc
class __$$SectionDTOImplCopyWithImpl<$Res>
    extends _$SectionDTOCopyWithImpl<$Res, _$SectionDTOImpl>
    implements _$$SectionDTOImplCopyWith<$Res> {
  __$$SectionDTOImplCopyWithImpl(
      _$SectionDTOImpl _value, $Res Function(_$SectionDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? picture = null,
    Object? index = freezed,
  }) {
    return _then(_$SectionDTOImpl(
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
class _$SectionDTOImpl implements _SectionDTO {
  const _$SectionDTOImpl(
      {required this.name, required this.picture, this.index});

  factory _$SectionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionDTOImplFromJson(json);

  @override
  final String name;
  @override
  final String picture;
  @override
  final int? index;

  @override
  String toString() {
    return 'SectionDTO(name: $name, picture: $picture, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionDTOImpl &&
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
  _$$SectionDTOImplCopyWith<_$SectionDTOImpl> get copyWith =>
      __$$SectionDTOImplCopyWithImpl<_$SectionDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionDTOImplToJson(
      this,
    );
  }
}

abstract class _SectionDTO implements SectionDTO {
  const factory _SectionDTO(
      {required final String name,
      required final String picture,
      final int? index}) = _$SectionDTOImpl;

  factory _SectionDTO.fromJson(Map<String, dynamic> json) =
      _$SectionDTOImpl.fromJson;

  @override
  String get name;
  @override
  String get picture;
  @override
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$$SectionDTOImplCopyWith<_$SectionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
