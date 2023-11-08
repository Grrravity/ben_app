import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/utils/logger.dart';
import 'package:ben_app/data/client/utils/json_typedef.dart';
import 'package:ben_app/data/client/utils/response_extension.dart';
import 'package:dio/dio.dart';

class RestApiHandler {
  RestApiHandler({required this.client});

  final Dio client;

  Future<Response<dynamic>> _handleRequest(
    Future<Response<dynamic>> Function() request,
  ) async {
    try {
      return _guardDioErrors(() async {
        final response = await request();

        if (response.error != null) {
          throw Exception(response.error);
        }

        return response;
      });
    } catch (e, s) {
      Error.throwWithStackTrace(e, s);
    }
  }

  Future<Response<dynamic>> get({
    required String route,
    Json? queryParameters,
  }) =>
      _handleRequest(
        () => client.get<dynamic>(
          route,
          queryParameters: queryParameters,
        ),
      );

  Future<Response<dynamic>> post({
    required String route,
    Json? queryParameters,
    Map<String, dynamic>? body,
  }) =>
      _handleRequest(
        () => client.post<dynamic>(
          route,
          data: jsonEncode(body),
          queryParameters: queryParameters,
        ),
      );

  /// The difference with post is that the body is not encoded
  Future<Response<dynamic>> postForm({
    required String route,
    Json? queryParameters,
    Map<String, dynamic>? body,
  }) =>
      _handleRequest(
        () => client.post<dynamic>(
          route,
          data: body,
          queryParameters: queryParameters,
        ),
      );

  Future<Response<dynamic>> put({
    required String route,
    Json? queryParameters,
    Map<String, dynamic>? body,
  }) =>
      _handleRequest(
        () => client.put<dynamic>(
          route,
          data: jsonEncode(body),
          queryParameters: queryParameters,
        ),
      );

  Future<Response<dynamic>> patch({
    required String route,
    Json? queryParameters,
    Map<String, dynamic>? body,
  }) =>
      _handleRequest(
        () => client.patch<dynamic>(
          route,
          data: jsonEncode(body),
          queryParameters: queryParameters,
        ),
      );

  Future<Response<dynamic>> delete({
    required String route,
    Json? queryParameters,
    Map<String, dynamic>? body,
  }) =>
      _handleRequest(
        () => client.delete<dynamic>(
          route,
          data: jsonEncode(body),
          queryParameters: queryParameters,
        ),
      );

  Future<Response<dynamic>> upload({
    required String route,
    Json? queryParameters,
    required File file,
  }) =>
      _handleRequest(
        () async {
          final fileName = file.path.split('/').last;
          final formData = FormData.fromMap({
            'file': await MultipartFile.fromFile(file.path, filename: fileName),
          });
          return client.post<dynamic>(
            route,
            data: formData,
            queryParameters: queryParameters,
          );
        },
      );

  String? _tryToGetMessage(DioException e) {
    try {
      final backendErrorMessage =
          (e.response?.data as Map<String, dynamic>?)?['message'];
      if (backendErrorMessage == null) return null;
      return jsonEncode(backendErrorMessage);
    } catch (e) {
      return null;
    }
  }

  /// Transforms [DioException]s throw by [call] into [Failure].
  Future<DataT> _guardDioErrors<DataT>(Future<DataT> Function() call) async {
    try {
      return await call();
    } on DioException catch (e, stack) {
      Logger.e(
        _tryToGetMessage(e) ?? 'HTTP Request failed',
        error: e,
        stackTrace: stack,
      );
      switch (e.type) {
        case DioExceptionType.connectionError:
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.cancel:
          throw Failure.connectivity;
        case DioExceptionType.badCertificate:
          throw Failure.other;
        case DioExceptionType.unknown:
          throw Failure.other;
        case DioExceptionType.badResponse:
          final statusCode = e.response?.statusCode;

          if (statusCode == null) {
            throw Failure.connectivity;
          }

          switch (statusCode) {
            case HttpStatus.notFound:
              throw Failure.elementNotFound;
            case HttpStatus.unauthorized:
              throw Failure.unauthorized;
            case HttpStatus.badRequest:
              final keycloakErrorDescription = (e.response?.data
                  as Map<String, dynamic>)['error_description'];
              if (keycloakErrorDescription == 'Account is not fully set up') {
                throw Failure.notVerified;
              }
              if (keycloakErrorDescription == 'Invalid refresh token') {
                throw Failure.expiredSession;
              }
              throw Failure.invalidCommand;
            case HttpStatus.conflict:
              throw Failure.other;
          }
      }
      throw Failure.other;
    } catch (e, stack) {
      Logger.e(
        'HTTP Request failed',
        error: e,
        stackTrace: stack,
      );

      throw Failure.other;
    }
  }
}
