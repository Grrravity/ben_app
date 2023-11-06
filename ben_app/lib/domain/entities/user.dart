import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user.freezed.dart';

@freezed
class User with _$User {
  const factory User.current({
    required final String uuid,
    required final String username,
  }) = CurrentUser;

  const factory User.member({
    required final String uuid,
    required final String username,
  }) = MemberUser;

  const factory User.creation({
    required final String username,
  }) = CreationUser;
}
