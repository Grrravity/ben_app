import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required final String uuid,
    required final String email,
  }) = _User;
}
