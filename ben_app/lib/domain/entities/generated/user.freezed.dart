// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  String get username => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, String username) current,
    required TResult Function(String uuid, String username) member,
    required TResult Function(String username) creation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid, String username)? current,
    TResult? Function(String uuid, String username)? member,
    TResult? Function(String username)? creation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, String username)? current,
    TResult Function(String uuid, String username)? member,
    TResult Function(String username)? creation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentUser value) current,
    required TResult Function(MemberUser value) member,
    required TResult Function(CreationUser value) creation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentUser value)? current,
    TResult? Function(MemberUser value)? member,
    TResult? Function(CreationUser value)? creation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentUser value)? current,
    TResult Function(MemberUser value)? member,
    TResult Function(CreationUser value)? creation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

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
abstract class _$$CurrentUserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$CurrentUserImplCopyWith(
          _$CurrentUserImpl value, $Res Function(_$CurrentUserImpl) then) =
      __$$CurrentUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String username});
}

/// @nodoc
class __$$CurrentUserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$CurrentUserImpl>
    implements _$$CurrentUserImplCopyWith<$Res> {
  __$$CurrentUserImplCopyWithImpl(
      _$CurrentUserImpl _value, $Res Function(_$CurrentUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
  }) {
    return _then(_$CurrentUserImpl(
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

class _$CurrentUserImpl implements CurrentUser {
  const _$CurrentUserImpl({required this.uuid, required this.username});

  @override
  final String uuid;
  @override
  final String username;

  @override
  String toString() {
    return 'User.current(uuid: $uuid, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUserImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUserImplCopyWith<_$CurrentUserImpl> get copyWith =>
      __$$CurrentUserImplCopyWithImpl<_$CurrentUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, String username) current,
    required TResult Function(String uuid, String username) member,
    required TResult Function(String username) creation,
  }) {
    return current(uuid, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid, String username)? current,
    TResult? Function(String uuid, String username)? member,
    TResult? Function(String username)? creation,
  }) {
    return current?.call(uuid, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, String username)? current,
    TResult Function(String uuid, String username)? member,
    TResult Function(String username)? creation,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(uuid, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentUser value) current,
    required TResult Function(MemberUser value) member,
    required TResult Function(CreationUser value) creation,
  }) {
    return current(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentUser value)? current,
    TResult? Function(MemberUser value)? member,
    TResult? Function(CreationUser value)? creation,
  }) {
    return current?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentUser value)? current,
    TResult Function(MemberUser value)? member,
    TResult Function(CreationUser value)? creation,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(this);
    }
    return orElse();
  }
}

abstract class CurrentUser implements User {
  const factory CurrentUser(
      {required final String uuid,
      required final String username}) = _$CurrentUserImpl;

  String get uuid;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$CurrentUserImplCopyWith<_$CurrentUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemberUserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$MemberUserImplCopyWith(
          _$MemberUserImpl value, $Res Function(_$MemberUserImpl) then) =
      __$$MemberUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String username});
}

/// @nodoc
class __$$MemberUserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$MemberUserImpl>
    implements _$$MemberUserImplCopyWith<$Res> {
  __$$MemberUserImplCopyWithImpl(
      _$MemberUserImpl _value, $Res Function(_$MemberUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
  }) {
    return _then(_$MemberUserImpl(
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

class _$MemberUserImpl implements MemberUser {
  const _$MemberUserImpl({required this.uuid, required this.username});

  @override
  final String uuid;
  @override
  final String username;

  @override
  String toString() {
    return 'User.member(uuid: $uuid, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberUserImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberUserImplCopyWith<_$MemberUserImpl> get copyWith =>
      __$$MemberUserImplCopyWithImpl<_$MemberUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, String username) current,
    required TResult Function(String uuid, String username) member,
    required TResult Function(String username) creation,
  }) {
    return member(uuid, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid, String username)? current,
    TResult? Function(String uuid, String username)? member,
    TResult? Function(String username)? creation,
  }) {
    return member?.call(uuid, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, String username)? current,
    TResult Function(String uuid, String username)? member,
    TResult Function(String username)? creation,
    required TResult orElse(),
  }) {
    if (member != null) {
      return member(uuid, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentUser value) current,
    required TResult Function(MemberUser value) member,
    required TResult Function(CreationUser value) creation,
  }) {
    return member(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentUser value)? current,
    TResult? Function(MemberUser value)? member,
    TResult? Function(CreationUser value)? creation,
  }) {
    return member?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentUser value)? current,
    TResult Function(MemberUser value)? member,
    TResult Function(CreationUser value)? creation,
    required TResult orElse(),
  }) {
    if (member != null) {
      return member(this);
    }
    return orElse();
  }
}

abstract class MemberUser implements User {
  const factory MemberUser(
      {required final String uuid,
      required final String username}) = _$MemberUserImpl;

  String get uuid;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$MemberUserImplCopyWith<_$MemberUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreationUserImplCopyWith<$Res>
    implements $UserCopyWith<$Res> {
  factory _$$CreationUserImplCopyWith(
          _$CreationUserImpl value, $Res Function(_$CreationUserImpl) then) =
      __$$CreationUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$CreationUserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$CreationUserImpl>
    implements _$$CreationUserImplCopyWith<$Res> {
  __$$CreationUserImplCopyWithImpl(
      _$CreationUserImpl _value, $Res Function(_$CreationUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$CreationUserImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreationUserImpl implements CreationUser {
  const _$CreationUserImpl({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'User.creation(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreationUserImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreationUserImplCopyWith<_$CreationUserImpl> get copyWith =>
      __$$CreationUserImplCopyWithImpl<_$CreationUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, String username) current,
    required TResult Function(String uuid, String username) member,
    required TResult Function(String username) creation,
  }) {
    return creation(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid, String username)? current,
    TResult? Function(String uuid, String username)? member,
    TResult? Function(String username)? creation,
  }) {
    return creation?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, String username)? current,
    TResult Function(String uuid, String username)? member,
    TResult Function(String username)? creation,
    required TResult orElse(),
  }) {
    if (creation != null) {
      return creation(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentUser value) current,
    required TResult Function(MemberUser value) member,
    required TResult Function(CreationUser value) creation,
  }) {
    return creation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentUser value)? current,
    TResult? Function(MemberUser value)? member,
    TResult? Function(CreationUser value)? creation,
  }) {
    return creation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentUser value)? current,
    TResult Function(MemberUser value)? member,
    TResult Function(CreationUser value)? creation,
    required TResult orElse(),
  }) {
    if (creation != null) {
      return creation(this);
    }
    return orElse();
  }
}

abstract class CreationUser implements User {
  const factory CreationUser({required final String username}) =
      _$CreationUserImpl;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$CreationUserImplCopyWith<_$CreationUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
