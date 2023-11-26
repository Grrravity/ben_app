import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/credentials.freezed.dart';

@freezed
class Credentials with _$Credentials {
  const Credentials._();

  const factory Credentials.loginPassword({
    required String login,
    required String password,
  }) = _Credentials;
}
