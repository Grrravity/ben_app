import 'dart:async';

import 'package:ben_app/core/enum/sso_enum.dart';
import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/utils/async_task.dart';
import 'package:ben_app/core/utils/logger.dart';
import 'package:ben_app/data/client/api_client.dart';
import 'package:ben_app/data/client/utils/response_extension.dart';
import 'package:ben_app/data/client/utils/rest_api_handler.dart';
import 'package:ben_app/data/datasource/local/tokens_local_source.dart';
import 'package:ben_app/data/model/jwt_dto.dart';
import 'package:ben_app/data/model/user_dto.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:ben_app/domain/entities/token.dart';
import 'package:flutter/services.dart';

abstract class SessionDataSource {
  Stream<Token?> get sessionStateStream;

  Future<JwtDto> signInWithEmailPassword(Credentials credentials);
  Future<JwtDto> signInWithSSO({
    required SsoIdentityProvider idp,
  });
  Future<void> saveFcm({required String fcmToken});
  Future<bool> signupWithEmailPassword(Credentials credentials);
  Future<bool> requestNewPassword(String email);
  Future<bool> updatePassword({
    required String userId,
    required String password,
  });
  Future<CurrentUserDto> getCurrentUser();
  Future<CurrentUserDto> createUserProfile({
    required CreationUserDto user,
  });

  Future<void> logout();

  /// Get current token. Refreshes it automatically if necessary.
  Future<Token?> getToken();
}

class SessionDataSourceImpl implements SessionDataSource {
  SessionDataSourceImpl({
    required this.apiClient,
    required this.localSource,
  }) {
    _getTokenTask = AsyncTask<Token?>(
      name: 'GetToken',
      task: () async {
        return _updateCurrentToken(
          await _getToken(),
        );
      },
    );
  }

  final logger = Logger('SessionDataSource');

  // Used to avoid running concurrently multiple times the
  // token renewal operation.
  late final AsyncTask<Token?> _getTokenTask;

  final RestApiHandler apiClient;
  final TokensLocalSource localSource;

  final StreamController<Token?> _sessionStateStreamController =
      StreamController.broadcast();
  @override
  Stream<Token?> get sessionStateStream =>
      _sessionStateStreamController.stream.distinct();

  @override
  Future<JwtDto> signInWithEmailPassword(
    Credentials credentials,
  ) async {
    final token = JwtDto.fromJson({
      'access_token': 'access_token',
      'refresh_token': 'refresh_token',
    });

    await _updateCurrentToken(token.toEntity);

    return token;
  }

  @override
  Future<JwtDto> signInWithSSO({
    required SsoIdentityProvider idp,
  }) async {
    try {
      logger.process('Signing with SSO : ${idp.name}');

      final tokenResult = JwtDto.fromJson({
        'access_token': 'access_token',
        'refresh_token': 'refresh_token',
      });

      final token = tokenResult.toEntity;
      await _updateCurrentToken(token);

      logger.success('Signing with SSO Succeed');

      return token.toDto;
    } on PlatformException catch (e) {
      if (e.code.contains('authorize_failed')) {
        logger.error('Authorization failed');
        throw Exception(Failure.ssoModalClosed.name);
      }
      logger.error('Technical error.', error: e);
      throw Exception();
    } catch (e, s) {
      logger.error(e, error: e, stackTrace: s);
      throw Exception(Failure.ssoModalClosed.name);
    }
  }

  @override
  Future<void> logout() async {
    try {
      logger.process('Signing out');
      await _updateCurrentToken(null);
      logger.success('Signed out');
    } on PlatformException catch (e) {
      // if (e.code.contains('authorize_failed')) {
      //   logger.error('Authorization failed');
      //   throw Exception(Failure.ssoModalClosed.name);
      // }
      await _updateCurrentToken(null);
      logger.error('Technical error. Logging out anyway', error: e);
    } catch (e, s) {
      await _updateCurrentToken(null);
      logger.error(
        'Technical error. Logging out anyway',
        error: e,
        stackTrace: s,
      );
    }
  }

  @override
  Future<void> saveFcm({
    required String fcmToken,
  }) async {
    await apiClient.post(
      route: ApiEndpoints.fcm,
      body: {
        'token': fcmToken,
      },
    );
  }

  @override
  Future<bool> signupWithEmailPassword(Credentials credentials) async {
    final response = await apiClient.post(
      route: ApiEndpoints.register,
      body: {
        'email': credentials.login,
        'password': credentials.password,
      },
    );

    return response.statusCode == 200;
  }

  @override
  Future<CurrentUserDto> getCurrentUser() async {
    final response = await apiClient.get(
      route: ApiEndpoints.currentUser,
    );
    return CurrentUserDto.fromJson(response.item);
  }

  @override
  Future<CurrentUserDto> createUserProfile({
    required CreationUserDto user,
  }) async {
    final response = await apiClient.post(
      route: ApiEndpoints.userProfile,
      body: user.toJson(),
    );

    final dto = response.item;

    return CurrentUserDto.fromJson(dto);
  }

  @override
  Future<bool> requestNewPassword(String email) async {
    //TODO : when backend is done
    final response = await apiClient.put(
      route: ApiEndpoints.requestNewPassword,
      queryParameters: {
        email: email,
      },
    );
    return response.statusCode == 200;
  }

  @override
  Future<bool> updatePassword({
    required String userId,
    required String password,
  }) async {
    final response = await apiClient.put(
      //TODO : real UserId
      route: ApiEndpoints.updatePassword(
        userId,
      ),
      body: {
        password: password,
      },
    );

    return response.statusCode == 200;
  }

  @override
  Future<Token?> getToken() async {
    return _getTokenTask.run();
  }

  Future<Token?> _getToken() async {
    final tokenValue = await localSource.fetch();
    if (tokenValue == null) {
      return null;
    }
    final token = tokenValue.toEntity;
    if (token.shouldRefresh) {
      return _refreshToken(token);
    }
    return token;
  }

  Future<Token?> _refreshToken(Token token) async {
    logger.process('Refreshing Token : $token');
    if (!token.canRefresh) {
      logger.info('Refresh token expired.');
      return _updateCurrentToken(null);
    }
    try {
      final newToken =
          (await _sendRefreshTokenRequest(token.refreshToken)).toEntity;
      logger.info('Token refreshed : $newToken');

      return _updateCurrentToken(newToken);
    } on Failure catch (err, s) {
      logger.error(err, error: err);
      if (err == Failure.expiredSession) {
        logger.info(
          'Refresh token rejected by backend.',
        );
        return _updateCurrentToken(null);
      }
      logger.error(
        'Refresh token failed (technical error).',
        error: err,
        stackTrace: s,
      );
      rethrow;
    } catch (e, s) {
      logger.error(
        'Refresh token failed (technical error).',
        error: e,
        stackTrace: s,
      );
      rethrow;
    }
  }

  Future<JwtDto> _sendRefreshTokenRequest(String refreshToken) async {
    return JwtDto.fromJson({
      'access_token': 'access_token',
      'refresh_token': 'refresh_token',
    });
  }

  Future<Token?> _updateCurrentToken(Token? token) async {
    if (token == null) {
      await localSource.clear();
    } else {
      await localSource.upsert(data: token.toDto);
    }
    _sessionStateStreamController.add(token);
    return token;
  }
}
