// ignore_for_file: avoid_setters_without_getters

part of 'auth_cubit.dart';

@freezed
class AuthFormData with _$AuthFormData {
  const factory AuthFormData({
    required EmailInput email,
    required PasswordInput password,
    required PasswordInput confirmPassword,
    required bool hidden,
  }) = _AuthFormData;

  factory AuthFormData.empty() => AuthFormData(
        email: EmailInput(),
        password: PasswordInput(),
        confirmPassword: PasswordInput(),
        hidden: true,
      );

  const AuthFormData._();

  factory AuthFormData.fromJson(Map<String, dynamic> json) =>
      _$AuthFormDataFromJson(json);

  AuthFormDataBuilder get builder => AuthFormDataBuilder(this);

  bool get canLogin =>
      email.isValid &&
      email.value != '' &&
      password.isValid &&
      password.value != '';

  bool get canRegister =>
      email.isValid &&
      password.isValid &&
      confirmPassword.isValid &&
      passwordsAreIdenticals;

  bool get passwordsAreIdenticals => password.value == confirmPassword.value;

  bool get canRequestPassword => email.isValid;

  bool get canResetPassword => password.isValid && confirmPassword.isValid;
}

class AuthFormDataBuilder {
  AuthFormDataBuilder(AuthFormData data)
      : _email = data.email,
        _password = data.password,
        _confirmPassword = data.confirmPassword,
        _hidden = data.hidden;

  EmailInput _email;
  PasswordInput _password;
  PasswordInput _confirmPassword;
  bool _hidden;

  AuthFormData build() => AuthFormData(
        email: _email,
        password: _password,
        confirmPassword: _confirmPassword,
        hidden: _hidden,
      );

  set email(EmailInput email) => _email = email;
  set password(PasswordInput password) => _password = password;
  set confirmPassword(PasswordInput confirmPassword) =>
      _confirmPassword = confirmPassword;
  set hidden(bool hidden) => _hidden = hidden;
}
