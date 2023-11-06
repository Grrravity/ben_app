import 'package:ben_app/data/model/user_dto.dart';
import 'package:ben_app/domain/entities/user.dart';

class MemberUserMapper {
  MemberUserMapper();

  List<MemberUser> toEntities(List<MemberUserDto> userDto) {
    return userDto.map(toEntity).toList();
  }

  MemberUser toEntity(MemberUserDto userDto) {
    return MemberUser(
      uuid: userDto.uuid,
      username: userDto.username,
    );
  }

  MemberUserDto toMemberUserDto(User user) {
    return MemberUserDto(
      uuid: user.map(
        current: (value) => value.uuid,
        member: (value) => value.uuid,
        creation: (_) => '',
      ),
      username: user.username,
    );
  }
}

class CurrentUserMapper {
  CurrentUserMapper();

  List<CurrentUser> toEntities(List<CurrentUserDto> userDto) {
    return userDto.map(toEntity).toList();
  }

  CurrentUser toEntity(CurrentUserDto userDto) {
    return CurrentUser(
      uuid: userDto.uuid,
      username: userDto.username,
    );
  }

  CurrentUserDto toCurrentUserDto(User user) {
    return CurrentUserDto(
      uuid: user.map(
        current: (value) => value.uuid,
        member: (value) => value.uuid,
        creation: (_) => '',
      ),
      username: user.username,
    );
  }
}

class CreationUserMapper {
  CreationUserMapper();

  List<CreationUser> toEntities(List<CreationUserDto> userDto) {
    return userDto.map(toEntity).toList();
  }

  CreationUser toEntity(CreationUserDto userDto) {
    return CreationUser(
      username: userDto.username,
    );
  }

  CreationUserDto toCreationUserDto(User user) {
    return CreationUserDto(
      username: user.username,
    );
  }
}
