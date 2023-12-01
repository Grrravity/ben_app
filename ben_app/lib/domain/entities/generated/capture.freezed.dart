// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../capture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Captures {
  String get path => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CapturesCopyWith<Captures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapturesCopyWith<$Res> {
  factory $CapturesCopyWith(Captures value, $Res Function(Captures) then) =
      _$CapturesCopyWithImpl<$Res, Captures>;
  @useResult
  $Res call({String path, String? description});
}

/// @nodoc
class _$CapturesCopyWithImpl<$Res, $Val extends Captures>
    implements $CapturesCopyWith<$Res> {
  _$CapturesCopyWithImpl(this._value, this._then);

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
abstract class _$$CapturesImplCopyWith<$Res>
    implements $CapturesCopyWith<$Res> {
  factory _$$CapturesImplCopyWith(
          _$CapturesImpl value, $Res Function(_$CapturesImpl) then) =
      __$$CapturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? description});
}

/// @nodoc
class __$$CapturesImplCopyWithImpl<$Res>
    extends _$CapturesCopyWithImpl<$Res, _$CapturesImpl>
    implements _$$CapturesImplCopyWith<$Res> {
  __$$CapturesImplCopyWithImpl(
      _$CapturesImpl _value, $Res Function(_$CapturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? description = freezed,
  }) {
    return _then(_$CapturesImpl(
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

class _$CapturesImpl implements _Captures {
  const _$CapturesImpl({required this.path, this.description});

  @override
  final String path;
  @override
  final String? description;

  @override
  String toString() {
    return 'Captures(path: $path, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapturesImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapturesImplCopyWith<_$CapturesImpl> get copyWith =>
      __$$CapturesImplCopyWithImpl<_$CapturesImpl>(this, _$identity);
}

abstract class _Captures implements Captures {
  const factory _Captures(
      {required final String path, final String? description}) = _$CapturesImpl;

  @override
  String get path;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$CapturesImplCopyWith<_$CapturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
