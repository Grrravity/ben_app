// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../jwt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JwtDto _$JwtDtoFromJson(Map<String, dynamic> json) {
  return _JwtDto.fromJson(json);
}

/// @nodoc
mixin _$JwtDto {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JwtDtoCopyWith<JwtDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtDtoCopyWith<$Res> {
  factory $JwtDtoCopyWith(JwtDto value, $Res Function(JwtDto) then) =
      _$JwtDtoCopyWithImpl<$Res, JwtDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$JwtDtoCopyWithImpl<$Res, $Val extends JwtDto>
    implements $JwtDtoCopyWith<$Res> {
  _$JwtDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JwtDtoImplCopyWith<$Res> implements $JwtDtoCopyWith<$Res> {
  factory _$$JwtDtoImplCopyWith(
          _$JwtDtoImpl value, $Res Function(_$JwtDtoImpl) then) =
      __$$JwtDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$JwtDtoImplCopyWithImpl<$Res>
    extends _$JwtDtoCopyWithImpl<$Res, _$JwtDtoImpl>
    implements _$$JwtDtoImplCopyWith<$Res> {
  __$$JwtDtoImplCopyWithImpl(
      _$JwtDtoImpl _value, $Res Function(_$JwtDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$JwtDtoImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JwtDtoImpl implements _JwtDto {
  const _$JwtDtoImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$JwtDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JwtDtoImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'JwtDto(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtDtoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtDtoImplCopyWith<_$JwtDtoImpl> get copyWith =>
      __$$JwtDtoImplCopyWithImpl<_$JwtDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JwtDtoImplToJson(
      this,
    );
  }
}

abstract class _JwtDto implements JwtDto {
  const factory _JwtDto(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken}) =
      _$JwtDtoImpl;

  factory _JwtDto.fromJson(Map<String, dynamic> json) = _$JwtDtoImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$JwtDtoImplCopyWith<_$JwtDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
