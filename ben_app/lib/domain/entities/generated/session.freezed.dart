// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Session {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function(User? user) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? anonymous,
    TResult? Function(User? user)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function(User? user)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Anonymous value) anonymous,
    required TResult Function(_SessionAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Anonymous value)? anonymous,
    TResult? Function(_SessionAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Anonymous value)? anonymous,
    TResult Function(_SessionAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AnonymousImplCopyWith<$Res> {
  factory _$$AnonymousImplCopyWith(
          _$AnonymousImpl value, $Res Function(_$AnonymousImpl) then) =
      __$$AnonymousImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnonymousImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$AnonymousImpl>
    implements _$$AnonymousImplCopyWith<$Res> {
  __$$AnonymousImplCopyWithImpl(
      _$AnonymousImpl _value, $Res Function(_$AnonymousImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AnonymousImpl extends _Anonymous {
  const _$AnonymousImpl() : super._();

  @override
  String toString() {
    return 'Session.anonymous()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnonymousImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function(User? user) authenticated,
  }) {
    return anonymous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? anonymous,
    TResult? Function(User? user)? authenticated,
  }) {
    return anonymous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function(User? user)? authenticated,
    required TResult orElse(),
  }) {
    if (anonymous != null) {
      return anonymous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Anonymous value) anonymous,
    required TResult Function(_SessionAuthenticated value) authenticated,
  }) {
    return anonymous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Anonymous value)? anonymous,
    TResult? Function(_SessionAuthenticated value)? authenticated,
  }) {
    return anonymous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Anonymous value)? anonymous,
    TResult Function(_SessionAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (anonymous != null) {
      return anonymous(this);
    }
    return orElse();
  }
}

abstract class _Anonymous extends Session {
  const factory _Anonymous() = _$AnonymousImpl;
  const _Anonymous._() : super._();
}

/// @nodoc
abstract class _$$SessionAuthenticatedImplCopyWith<$Res> {
  factory _$$SessionAuthenticatedImplCopyWith(_$SessionAuthenticatedImpl value,
          $Res Function(_$SessionAuthenticatedImpl) then) =
      __$$SessionAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SessionAuthenticatedImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionAuthenticatedImpl>
    implements _$$SessionAuthenticatedImplCopyWith<$Res> {
  __$$SessionAuthenticatedImplCopyWithImpl(_$SessionAuthenticatedImpl _value,
      $Res Function(_$SessionAuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$SessionAuthenticatedImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SessionAuthenticatedImpl extends _SessionAuthenticated {
  const _$SessionAuthenticatedImpl({this.user}) : super._();

  @override
  final User? user;

  @override
  String toString() {
    return 'Session.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionAuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionAuthenticatedImplCopyWith<_$SessionAuthenticatedImpl>
      get copyWith =>
          __$$SessionAuthenticatedImplCopyWithImpl<_$SessionAuthenticatedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function(User? user) authenticated,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? anonymous,
    TResult? Function(User? user)? authenticated,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function(User? user)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Anonymous value) anonymous,
    required TResult Function(_SessionAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Anonymous value)? anonymous,
    TResult? Function(_SessionAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Anonymous value)? anonymous,
    TResult Function(_SessionAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _SessionAuthenticated extends Session {
  const factory _SessionAuthenticated({final User? user}) =
      _$SessionAuthenticatedImpl;
  const _SessionAuthenticated._() : super._();

  User? get user;
  @JsonKey(ignore: true)
  _$$SessionAuthenticatedImplCopyWith<_$SessionAuthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
