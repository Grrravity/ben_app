import 'package:ben_app/data/client/api_client.dart';
import 'package:ben_app/data/client/utils/response_extension.dart';
import 'package:ben_app/data/client/utils/rest_api_handler.dart';
import 'package:ben_app/data/model/user_dto.dart';

abstract class UserApiSource {
  Future<UserDto> getCurrentUser({required String uuid});

  Future<void> saveFcm({required String fcmToken});
}

class UserApiSourceImpl extends UserApiSource {
  UserApiSourceImpl({required this.client});

  final RestApiHandler client;

  @override
  Future<UserDto> getCurrentUser({required String uuid}) async {
    final response = await client.get(route: 'users/me');

    return UserDto.fromJson(response.item);
  }

  @override
  Future<void> saveFcm({
    required String fcmToken,
  }) async {
    await client.post(
      route: ApiEndpoints.fcm,
      body: {
        'token': fcmToken,
      },
    );
  }
}
