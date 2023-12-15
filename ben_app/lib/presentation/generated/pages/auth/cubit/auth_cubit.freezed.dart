// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../pages/auth/cubit/auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthFormData _$AuthFormDataFromJson(Map<String, dynamic> json) {
  return _AuthFormData.fromJson(json);
}

/// @nodoc
mixin _$AuthFormData {
  EmailInput get email => throw _privateConstructorUsedError;
  PasswordInput get password => throw _privateConstructorUsedError;
  PasswordInput get confirmPassword => throw _privateConstructorUsedError;
  bool get hidden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthFormDataCopyWith<AuthFormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormDataCopyWith<$Res> {
  factory $AuthFormDataCopyWith(
          AuthFormData value, $Res Function(AuthFormData) then) =
      _$AuthFormDataCopyWithImpl<$Res, AuthFormData>;
  @useResult
  $Res call(
      {EmailInput email,
      PasswordInput password,
      PasswordInput confirmPassword,
      bool hidden});
}

/// @nodoc
class _$AuthFormDataCopyWithImpl<$Res, $Val extends AuthFormData>
    implements $AuthFormDataCopyWith<$Res> {
  _$AuthFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? hidden = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      hidden: null == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthFormDataImplCopyWith<$Res>
    implements $AuthFormDataCopyWith<$Res> {
  factory _$$AuthFormDataImplCopyWith(
          _$AuthFormDataImpl value, $Res Function(_$AuthFormDataImpl) then) =
      __$$AuthFormDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailInput email,
      PasswordInput password,
      PasswordInput confirmPassword,
      bool hidden});
}

/// @nodoc
class __$$AuthFormDataImplCopyWithImpl<$Res>
    extends _$AuthFormDataCopyWithImpl<$Res, _$AuthFormDataImpl>
    implements _$$AuthFormDataImplCopyWith<$Res> {
  __$$AuthFormDataImplCopyWithImpl(
      _$AuthFormDataImpl _value, $Res Function(_$AuthFormDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? hidden = null,
  }) {
    return _then(_$AuthFormDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      hidden: null == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthFormDataImpl extends _AuthFormData {
  const _$AuthFormDataImpl(
      {required this.email,
      required this.password,
      required this.confirmPassword,
      required this.hidden})
      : super._();

  factory _$AuthFormDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthFormDataImplFromJson(json);

  @override
  final EmailInput email;
  @override
  final PasswordInput password;
  @override
  final PasswordInput confirmPassword;
  @override
  final bool hidden;

  @override
  String toString() {
    return 'AuthFormData(email: $email, password: $password, confirmPassword: $confirmPassword, hidden: $hidden)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFormDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.hidden, hidden) || other.hidden == hidden));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, confirmPassword, hidden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFormDataImplCopyWith<_$AuthFormDataImpl> get copyWith =>
      __$$AuthFormDataImplCopyWithImpl<_$AuthFormDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthFormDataImplToJson(
      this,
    );
  }
}

abstract class _AuthFormData extends AuthFormData {
  const factory _AuthFormData(
      {required final EmailInput email,
      required final PasswordInput password,
      required final PasswordInput confirmPassword,
      required final bool hidden}) = _$AuthFormDataImpl;
  const _AuthFormData._() : super._();

  factory _AuthFormData.fromJson(Map<String, dynamic> json) =
      _$AuthFormDataImpl.fromJson;

  @override
  EmailInput get email;
  @override
  PasswordInput get password;
  @override
  PasswordInput get confirmPassword;
  @override
  bool get hidden;
  @override
  @JsonKey(ignore: true)
  _$$AuthFormDataImplCopyWith<_$AuthFormDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
