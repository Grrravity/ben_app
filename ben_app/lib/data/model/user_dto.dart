import 'dart:core';

import 'package:ben_app/domain/entities/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user_dto.freezed.dart';
part 'generated/user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    @JsonKey(name: 'id') required String uuid, // ! remove id, to keep uuid
    required String email,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromFirebaseAuthUser(
    firebase_auth.User firebaseUser,
  ) {
    return UserDto(
      uuid: firebaseUser.uid,
      email: firebaseUser.email ?? '',
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

extension OnUser on UserDto {
  User get toEntity {
    return User(
      uuid: uuid,
      email: email,
    );
  }
}

extension OnListUser on List<UserDto> {
  List<User> get toEntity {
    return map((UserDto user) => user.toEntity).toList();
  }
}

extension OnUserDto on User {
  UserDto get toDTO {
    return UserDto(
      uuid: uuid,
      email: email,
    );
  }
}

extension OnListCurrentUserDtoJson on List<Map<String, dynamic>> {
  List<UserDto> get toDTOList {
    return map(UserDto.fromJson).toList();
  }
}
