// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentUserDto _$CurrentUserDtoFromJson(Map<String, dynamic> json) {
  return _CurrentUserDto.fromJson(json);
}

/// @nodoc
mixin _$CurrentUserDto {
  @JsonKey(name: 'id')
  String get uuid =>
      throw _privateConstructorUsedError; // ! remove id, to keep uuid
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUserDtoCopyWith<CurrentUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserDtoCopyWith<$Res> {
  factory $CurrentUserDtoCopyWith(
          CurrentUserDto value, $Res Function(CurrentUserDto) then) =
      _$CurrentUserDtoCopyWithImpl<$Res, CurrentUserDto>;
  @useResult
  $Res call({@JsonKey(name: 'id') String uuid, String username});
}

/// @nodoc
class _$CurrentUserDtoCopyWithImpl<$Res, $Val extends CurrentUserDto>
    implements $CurrentUserDtoCopyWith<$Res> {
  _$CurrentUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentUserDtoImplCopyWith<$Res>
    implements $CurrentUserDtoCopyWith<$Res> {
  factory _$$CurrentUserDtoImplCopyWith(_$CurrentUserDtoImpl value,
          $Res Function(_$CurrentUserDtoImpl) then) =
      __$$CurrentUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String uuid, String username});
}

/// @nodoc
class __$$CurrentUserDtoImplCopyWithImpl<$Res>
    extends _$CurrentUserDtoCopyWithImpl<$Res, _$CurrentUserDtoImpl>
    implements _$$CurrentUserDtoImplCopyWith<$Res> {
  __$$CurrentUserDtoImplCopyWithImpl(
      _$CurrentUserDtoImpl _value, $Res Function(_$CurrentUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
  }) {
    return _then(_$CurrentUserDtoImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentUserDtoImpl extends _CurrentUserDto {
  const _$CurrentUserDtoImpl(
      {@JsonKey(name: 'id') required this.uuid, required this.username})
      : super._();

  factory _$CurrentUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentUserDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String uuid;
// ! remove id, to keep uuid
  @override
  final String username;

  @override
  String toString() {
    return 'CurrentUserDto(uuid: $uuid, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUserDtoImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUserDtoImplCopyWith<_$CurrentUserDtoImpl> get copyWith =>
      __$$CurrentUserDtoImplCopyWithImpl<_$CurrentUserDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentUserDtoImplToJson(
      this,
    );
  }
}

abstract class _CurrentUserDto extends CurrentUserDto {
  const factory _CurrentUserDto(
      {@JsonKey(name: 'id') required final String uuid,
      required final String username}) = _$CurrentUserDtoImpl;
  const _CurrentUserDto._() : super._();

  factory _CurrentUserDto.fromJson(Map<String, dynamic> json) =
      _$CurrentUserDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get uuid;
  @override // ! remove id, to keep uuid
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$CurrentUserDtoImplCopyWith<_$CurrentUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberUserDto _$MemberUserDtoFromJson(Map<String, dynamic> json) {
  return _MemberUserDto.fromJson(json);
}

/// @nodoc
mixin _$MemberUserDto {
  @JsonKey(name: 'id')
  String get uuid => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberUserDtoCopyWith<MemberUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberUserDtoCopyWith<$Res> {
  factory $MemberUserDtoCopyWith(
          MemberUserDto value, $Res Function(MemberUserDto) then) =
      _$MemberUserDtoCopyWithImpl<$Res, MemberUserDto>;
  @useResult
  $Res call({@JsonKey(name: 'id') String uuid, String username});
}

/// @nodoc
class _$MemberUserDtoCopyWithImpl<$Res, $Val extends MemberUserDto>
    implements $MemberUserDtoCopyWith<$Res> {
  _$MemberUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberUserDtoImplCopyWith<$Res>
    implements $MemberUserDtoCopyWith<$Res> {
  factory _$$MemberUserDtoImplCopyWith(
          _$MemberUserDtoImpl value, $Res Function(_$MemberUserDtoImpl) then) =
      __$$MemberUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String uuid, String username});
}

/// @nodoc
class __$$MemberUserDtoImplCopyWithImpl<$Res>
    extends _$MemberUserDtoCopyWithImpl<$Res, _$MemberUserDtoImpl>
    implements _$$MemberUserDtoImplCopyWith<$Res> {
  __$$MemberUserDtoImplCopyWithImpl(
      _$MemberUserDtoImpl _value, $Res Function(_$MemberUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
  }) {
    return _then(_$MemberUserDtoImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberUserDtoImpl extends _MemberUserDto {
  const _$MemberUserDtoImpl(
      {@JsonKey(name: 'id') required this.uuid, required this.username})
      : super._();

  factory _$MemberUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberUserDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String uuid;
  @override
  final String username;

  @override
  String toString() {
    return 'MemberUserDto(uuid: $uuid, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberUserDtoImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberUserDtoImplCopyWith<_$MemberUserDtoImpl> get copyWith =>
      __$$MemberUserDtoImplCopyWithImpl<_$MemberUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberUserDtoImplToJson(
      this,
    );
  }
}

abstract class _MemberUserDto extends MemberUserDto {
  const factory _MemberUserDto(
      {@JsonKey(name: 'id') required final String uuid,
      required final String username}) = _$MemberUserDtoImpl;
  const _MemberUserDto._() : super._();

  factory _MemberUserDto.fromJson(Map<String, dynamic> json) =
      _$MemberUserDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get uuid;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$MemberUserDtoImplCopyWith<_$MemberUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreationUserDto _$CreationUserDtoFromJson(Map<String, dynamic> json) {
  return _CreationUserDto.fromJson(json);
}

/// @nodoc
mixin _$CreationUserDto {
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreationUserDtoCopyWith<CreationUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreationUserDtoCopyWith<$Res> {
  factory $CreationUserDtoCopyWith(
          CreationUserDto value, $Res Function(CreationUserDto) then) =
      _$CreationUserDtoCopyWithImpl<$Res, CreationUserDto>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class _$CreationUserDtoCopyWithImpl<$Res, $Val extends CreationUserDto>
    implements $CreationUserDtoCopyWith<$Res> {
  _$CreationUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreationUserDtoImplCopyWith<$Res>
    implements $CreationUserDtoCopyWith<$Res> {
  factory _$$CreationUserDtoImplCopyWith(_$CreationUserDtoImpl value,
          $Res Function(_$CreationUserDtoImpl) then) =
      __$$CreationUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$CreationUserDtoImplCopyWithImpl<$Res>
    extends _$CreationUserDtoCopyWithImpl<$Res, _$CreationUserDtoImpl>
    implements _$$CreationUserDtoImplCopyWith<$Res> {
  __$$CreationUserDtoImplCopyWithImpl(
      _$CreationUserDtoImpl _value, $Res Function(_$CreationUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$CreationUserDtoImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreationUserDtoImpl extends _CreationUserDto {
  const _$CreationUserDtoImpl({required this.username}) : super._();

  factory _$CreationUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreationUserDtoImplFromJson(json);

  @override
  final String username;

  @override
  String toString() {
    return 'CreationUserDto(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreationUserDtoImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreationUserDtoImplCopyWith<_$CreationUserDtoImpl> get copyWith =>
      __$$CreationUserDtoImplCopyWithImpl<_$CreationUserDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreationUserDtoImplToJson(
      this,
    );
  }
}

abstract class _CreationUserDto extends CreationUserDto {
  const factory _CreationUserDto({required final String username}) =
      _$CreationUserDtoImpl;
  const _CreationUserDto._() : super._();

  factory _CreationUserDto.fromJson(Map<String, dynamic> json) =
      _$CreationUserDtoImpl.fromJson;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$CreationUserDtoImplCopyWith<_$CreationUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
