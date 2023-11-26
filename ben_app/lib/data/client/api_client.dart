import 'package:dio/dio.dart';

class ApiClient {
  static const String instanceName = 'apiClient';

  static Dio build(String baseUrl) {
    final _client = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        sendTimeout: const Duration(seconds: 15),
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      ),
    );
    return _client;
  }
}

class ApiEndpoints {
  /// Users
  static const String register = '/users';
  static String requestNewPassword = '/users/password-recovery';

  static String updatePassword(String userId) =>
      '/users/$userId/update-password';
  static const String fcm = '/auth/local/fcm';

  /// User profiles
  static const String userProfile = '/user-profiles';
  static String userProfileById(String userProfileId) =>
      '$userProfile/$userProfileId';
  static String userProfileByOwnerId(String userId) =>
      '/users/$userId/user-profile';
  static const String currentUser = '$userProfile/me';
  static const String currentUserAvatar = '$userProfile/me/avatar';

  /// References
  static const String interests = '/interests';
  static const String activities = '/activities';
  static const String genders = '/genders';
  static const String goals = '/goals';

  /// Discussions
  static const String discussionsThemes = '/chat-themes';
  static const String discussions = '/chat';
}
