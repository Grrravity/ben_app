// ignore_for_file: avoid_setters_without_getters

part of 'auth_cubit.dart';

@freezed
class AuthFormData with _$AuthFormData {
  const factory AuthFormData({
    required EmailInput email,
    required StringInput password,
    required StringInput confirmPassword,
    required bool hidden,
  }) = _AuthFormData;

  factory AuthFormData.empty() => AuthFormData(
        email: EmailInput(),
        password: StringInput(),
        confirmPassword: StringInput(),
        hidden: true,
      );

  const AuthFormData._();

  factory AuthFormData.fromJson(Map<String, dynamic> json) =>
      _$AuthFormDataFromJson(json);

  AuthFormDataBuilder get builder => AuthFormDataBuilder(this);

  bool get canLogin => email.isValid && password.isValid;

  bool get canRegister =>
      email.isValid &&
      password.isValid &&
      confirmPassword.isValid &&
      passwordsAreIdenticals;

  bool get passwordsAreIdenticals => password.value == confirmPassword.value;

  bool get canRequestPassword => email.isValid;

  bool get canResetPassword => password.isValid && confirmPassword.isValid;

  static bool get okkk => true;
}

class AuthFormDataBuilder {
  AuthFormDataBuilder(AuthFormData data)
      : _email = data.email,
        _password = data.password,
        _confirmPassword = data.confirmPassword,
        _hidden = data.hidden;

  EmailInput _email;
  StringInput _password;
  StringInput _confirmPassword;
  bool _hidden;

  AuthFormData build() => AuthFormData(
        email: _email,
        password: _password,
        confirmPassword: _confirmPassword,
        hidden: _hidden,
      );

  set email(EmailInput email) => _email = email;
  set password(StringInput password) => _password = password;
  set confirmPassword(StringInput confirmPassword) =>
      _confirmPassword = confirmPassword;
  set hidden(bool hidden) => _hidden = hidden;
}
