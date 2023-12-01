// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../upload_file_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadFileResult {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadFileResultCopyWith<UploadFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileResultCopyWith<$Res> {
  factory $UploadFileResultCopyWith(
          UploadFileResult value, $Res Function(UploadFileResult) then) =
      _$UploadFileResultCopyWithImpl<$Res, UploadFileResult>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$UploadFileResultCopyWithImpl<$Res, $Val extends UploadFileResult>
    implements $UploadFileResultCopyWith<$Res> {
  _$UploadFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFileResultImplCopyWith<$Res>
    implements $UploadFileResultCopyWith<$Res> {
  factory _$$UploadFileResultImplCopyWith(_$UploadFileResultImpl value,
          $Res Function(_$UploadFileResultImpl) then) =
      __$$UploadFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$UploadFileResultImplCopyWithImpl<$Res>
    extends _$UploadFileResultCopyWithImpl<$Res, _$UploadFileResultImpl>
    implements _$$UploadFileResultImplCopyWith<$Res> {
  __$$UploadFileResultImplCopyWithImpl(_$UploadFileResultImpl _value,
      $Res Function(_$UploadFileResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$UploadFileResultImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadFileResultImpl implements _UploadFileResult {
  const _$UploadFileResultImpl({required this.name, required this.url});

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'UploadFileResult(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileResultImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileResultImplCopyWith<_$UploadFileResultImpl> get copyWith =>
      __$$UploadFileResultImplCopyWithImpl<_$UploadFileResultImpl>(
          this, _$identity);
}

abstract class _UploadFileResult implements UploadFileResult {
  const factory _UploadFileResult(
      {required final String name,
      required final String url}) = _$UploadFileResultImpl;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$UploadFileResultImplCopyWith<_$UploadFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
