import 'package:ben_app/data/client/utils/response_extension.dart';
import 'package:ben_app/data/client/utils/rest_api_handler.dart';
import 'package:ben_app/data/model/user_dto.dart';

abstract class UserApiSource {
  Future<CurrentUserDto> getCurrentUser({required String uuid});
  Future<MemberUserDto> getMember({required String uuid});
}

class UserApiSourceImpl extends UserApiSource {
  UserApiSourceImpl({required this.client});

  final RestApiHandler client;

  @override
  Future<CurrentUserDto> getCurrentUser({required String uuid}) async {
    final response = await client.get(route: 'users/me');

    return CurrentUserDto.fromJson(response.item);
  }

  @override
  Future<MemberUserDto> getMember({required String uuid}) async {
    final response = await client.get(
      route: 'users/$uuid',
    );
    return MemberUserDto.fromJson(response.item);
  }
}
