import 'package:dio/dio.dart';

class KeycloackClient {
  static const String instanceName = 'keycloackClient';

  static Dio build(String baseUrl) {
    final _client = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        sendTimeout: const Duration(seconds: 15),
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      ),
    );
    return _client;
  }
}

class KeycloakEndpoints {
  static const String ssoAuth = '/.well-known/openid-configuration';
  static const String credentialAuth = '/protocol/openid-connect/token';
}
