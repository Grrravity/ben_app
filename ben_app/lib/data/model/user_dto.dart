import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ben_app/domain/entities/user.dart';

part 'generated/user_dto.freezed.dart';
part 'generated/user_dto.g.dart';

/// Currently connected User profile
@freezed
class CurrentUserDto with _$CurrentUserDto {
  const factory CurrentUserDto({
    @JsonKey(name: 'id') required String uuid, // ! remove id, to keep uuid
    required String username,
  }) = _CurrentUserDto;

  const CurrentUserDto._();

  factory CurrentUserDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserDtoFromJson(json);
}

/// Other users profiles
@freezed
class MemberUserDto with _$MemberUserDto {
  const factory MemberUserDto({
    @JsonKey(name: 'id') required String uuid,
    required String username,
  }) = _MemberUserDto;

  const MemberUserDto._();

  factory MemberUserDto.fromJson(Map<String, dynamic> json) =>
      _$MemberUserDtoFromJson(json);
}

/// Other users profiles
@freezed
class CreationUserDto with _$CreationUserDto {
  const factory CreationUserDto({
    required String username,
  }) = _CreationUserDto;

  const CreationUserDto._();

  factory CreationUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreationUserDtoFromJson(json);
}

extension OnCreationUserDto on CreationUser {
  CreationUserDto get toDTO {
    return CreationUserDto(
      username: username,
    );
  }
}

extension OnListCreationUserDtoJson on List<Map<String, dynamic>> {
  List<CreationUserDto> get toDTOList {
    return map(CreationUserDto.fromJson).toList();
  }
}

extension OnMemberUserDto on MemberUser {
  MemberUserDto get toDTO {
    return MemberUserDto(
      uuid: uuid,
      username: username,
    );
  }
}

extension OnUserDtoList on List<MemberUser> {
  List<MemberUserDto> get toDTO {
    return map((e) => e.toDTO).toList();
  }
}

extension OnListMemberUserDtoJson on List<Map<String, dynamic>> {
  List<MemberUserDto> get toDTOList {
    return map(MemberUserDto.fromJson).toList();
  }
}

extension OnCurrentUserDto on CurrentUser {
  CurrentUserDto get toDTO {
    return CurrentUserDto(
      uuid: uuid,
      username: username,
    );
  }
}
