// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../upload_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadFile {
  String get name => throw _privateConstructorUsedError;
  Uint8List get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadFileCopyWith<UploadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileCopyWith<$Res> {
  factory $UploadFileCopyWith(
          UploadFile value, $Res Function(UploadFile) then) =
      _$UploadFileCopyWithImpl<$Res, UploadFile>;
  @useResult
  $Res call({String name, Uint8List data});
}

/// @nodoc
class _$UploadFileCopyWithImpl<$Res, $Val extends UploadFile>
    implements $UploadFileCopyWith<$Res> {
  _$UploadFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFileImplCopyWith<$Res>
    implements $UploadFileCopyWith<$Res> {
  factory _$$UploadFileImplCopyWith(
          _$UploadFileImpl value, $Res Function(_$UploadFileImpl) then) =
      __$$UploadFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Uint8List data});
}

/// @nodoc
class __$$UploadFileImplCopyWithImpl<$Res>
    extends _$UploadFileCopyWithImpl<$Res, _$UploadFileImpl>
    implements _$$UploadFileImplCopyWith<$Res> {
  __$$UploadFileImplCopyWithImpl(
      _$UploadFileImpl _value, $Res Function(_$UploadFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_$UploadFileImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$UploadFileImpl implements _UploadFile {
  const _$UploadFileImpl({required this.name, required this.data});

  @override
  final String name;
  @override
  final Uint8List data;

  @override
  String toString() {
    return 'UploadFile(name: $name, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileImplCopyWith<_$UploadFileImpl> get copyWith =>
      __$$UploadFileImplCopyWithImpl<_$UploadFileImpl>(this, _$identity);
}

abstract class _UploadFile implements UploadFile {
  const factory _UploadFile(
      {required final String name,
      required final Uint8List data}) = _$UploadFileImpl;

  @override
  String get name;
  @override
  Uint8List get data;
  @override
  @JsonKey(ignore: true)
  _$$UploadFileImplCopyWith<_$UploadFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
