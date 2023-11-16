// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../upload_file_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadFileDTO {
  String get name => throw _privateConstructorUsedError;
  Uint8List get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadFileDTOCopyWith<UploadFileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileDTOCopyWith<$Res> {
  factory $UploadFileDTOCopyWith(
          UploadFileDTO value, $Res Function(UploadFileDTO) then) =
      _$UploadFileDTOCopyWithImpl<$Res, UploadFileDTO>;
  @useResult
  $Res call({String name, Uint8List data});
}

/// @nodoc
class _$UploadFileDTOCopyWithImpl<$Res, $Val extends UploadFileDTO>
    implements $UploadFileDTOCopyWith<$Res> {
  _$UploadFileDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$UploadFileDTOImplCopyWith<$Res>
    implements $UploadFileDTOCopyWith<$Res> {
  factory _$$UploadFileDTOImplCopyWith(
          _$UploadFileDTOImpl value, $Res Function(_$UploadFileDTOImpl) then) =
      __$$UploadFileDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Uint8List data});
}

/// @nodoc
class __$$UploadFileDTOImplCopyWithImpl<$Res>
    extends _$UploadFileDTOCopyWithImpl<$Res, _$UploadFileDTOImpl>
    implements _$$UploadFileDTOImplCopyWith<$Res> {
  __$$UploadFileDTOImplCopyWithImpl(
      _$UploadFileDTOImpl _value, $Res Function(_$UploadFileDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_$UploadFileDTOImpl(
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

class _$UploadFileDTOImpl implements _UploadFileDTO {
  const _$UploadFileDTOImpl({required this.name, required this.data});

  @override
  final String name;
  @override
  final Uint8List data;

  @override
  String toString() {
    return 'UploadFileDTO(name: $name, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileDTOImplCopyWith<_$UploadFileDTOImpl> get copyWith =>
      __$$UploadFileDTOImplCopyWithImpl<_$UploadFileDTOImpl>(this, _$identity);
}

abstract class _UploadFileDTO implements UploadFileDTO {
  const factory _UploadFileDTO(
      {required final String name,
      required final Uint8List data}) = _$UploadFileDTOImpl;

  @override
  String get name;
  @override
  Uint8List get data;
  @override
  @JsonKey(ignore: true)
  _$$UploadFileDTOImplCopyWith<_$UploadFileDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
