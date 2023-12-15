// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../capture_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CapturesDTO _$CapturesDTOFromJson(Map<String, dynamic> json) {
  return _CapturesDTO.fromJson(json);
}

/// @nodoc
mixin _$CapturesDTO {
  String get path => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapturesDTOCopyWith<CapturesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapturesDTOCopyWith<$Res> {
  factory $CapturesDTOCopyWith(
          CapturesDTO value, $Res Function(CapturesDTO) then) =
      _$CapturesDTOCopyWithImpl<$Res, CapturesDTO>;
  @useResult
  $Res call({String path, String? description});
}

/// @nodoc
class _$CapturesDTOCopyWithImpl<$Res, $Val extends CapturesDTO>
    implements $CapturesDTOCopyWith<$Res> {
  _$CapturesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapturesDTOImplCopyWith<$Res>
    implements $CapturesDTOCopyWith<$Res> {
  factory _$$CapturesDTOImplCopyWith(
          _$CapturesDTOImpl value, $Res Function(_$CapturesDTOImpl) then) =
      __$$CapturesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? description});
}

/// @nodoc
class __$$CapturesDTOImplCopyWithImpl<$Res>
    extends _$CapturesDTOCopyWithImpl<$Res, _$CapturesDTOImpl>
    implements _$$CapturesDTOImplCopyWith<$Res> {
  __$$CapturesDTOImplCopyWithImpl(
      _$CapturesDTOImpl _value, $Res Function(_$CapturesDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? description = freezed,
  }) {
    return _then(_$CapturesDTOImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapturesDTOImpl implements _CapturesDTO {
  const _$CapturesDTOImpl({required this.path, this.description});

  factory _$CapturesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CapturesDTOImplFromJson(json);

  @override
  final String path;
  @override
  final String? description;

  @override
  String toString() {
    return 'CapturesDTO(path: $path, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapturesDTOImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapturesDTOImplCopyWith<_$CapturesDTOImpl> get copyWith =>
      __$$CapturesDTOImplCopyWithImpl<_$CapturesDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapturesDTOImplToJson(
      this,
    );
  }
}

abstract class _CapturesDTO implements CapturesDTO {
  const factory _CapturesDTO(
      {required final String path,
      final String? description}) = _$CapturesDTOImpl;

  factory _CapturesDTO.fromJson(Map<String, dynamic> json) =
      _$CapturesDTOImpl.fromJson;

  @override
  String get path;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$CapturesDTOImplCopyWith<_$CapturesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
