// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../intersection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Intersection {
  String get name => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntersectionCopyWith<Intersection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntersectionCopyWith<$Res> {
  factory $IntersectionCopyWith(
          Intersection value, $Res Function(Intersection) then) =
      _$IntersectionCopyWithImpl<$Res, Intersection>;
  @useResult
  $Res call({String name, String picture});
}

/// @nodoc
class _$IntersectionCopyWithImpl<$Res, $Val extends Intersection>
    implements $IntersectionCopyWith<$Res> {
  _$IntersectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? picture = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntersectionImplCopyWith<$Res>
    implements $IntersectionCopyWith<$Res> {
  factory _$$IntersectionImplCopyWith(
          _$IntersectionImpl value, $Res Function(_$IntersectionImpl) then) =
      __$$IntersectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String picture});
}

/// @nodoc
class __$$IntersectionImplCopyWithImpl<$Res>
    extends _$IntersectionCopyWithImpl<$Res, _$IntersectionImpl>
    implements _$$IntersectionImplCopyWith<$Res> {
  __$$IntersectionImplCopyWithImpl(
      _$IntersectionImpl _value, $Res Function(_$IntersectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? picture = null,
  }) {
    return _then(_$IntersectionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IntersectionImpl implements _Intersection {
  const _$IntersectionImpl({required this.name, required this.picture});

  @override
  final String name;
  @override
  final String picture;

  @override
  String toString() {
    return 'Intersection(name: $name, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntersectionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntersectionImplCopyWith<_$IntersectionImpl> get copyWith =>
      __$$IntersectionImplCopyWithImpl<_$IntersectionImpl>(this, _$identity);
}

abstract class _Intersection implements Intersection {
  const factory _Intersection(
      {required final String name,
      required final String picture}) = _$IntersectionImpl;

  @override
  String get name;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$IntersectionImplCopyWith<_$IntersectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
