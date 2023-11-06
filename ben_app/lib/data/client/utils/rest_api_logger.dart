import 'dart:developer';

import 'package:dio/dio.dart';

class DioApiLogger {
  static String normalColor = '\x1B[36m';
  static String errorColor = '\x1B[31m';
  static String resetColor = '\x1B[0m';
  RequestOptions onRequestLogger(RequestOptions request) {
    log(
      '''
${normalColor}REQUEST[${request.method}]
  BASE URL: ${request.baseUrl} - PATH: ${request.path}
  HEADERS: ${request.headers}
  QUERY-PARAMETERS: ${request.queryParameters}$resetColor
''',
    );

    return request;
  }

  Response<dynamic> onResponseLogger(Response<dynamic> response) {
    log(
      '''
${normalColor}RESPONSE[${response.statusCode}]
  PATH: ${response.requestOptions.path}
  DATA: ${response.data == null ? 'empty' : response.data.toString().length > 100 ? "${response.data.toString().substring(0, 100)}..." : response.data.toString()}
$resetColor''',
    );
    return response;
  }

  DioException onErrorLogger(DioException err) {
    log(
      '''
${errorColor}ERROR[${err.response?.statusCode ?? '---'}]
  PATH: ${err.requestOptions.path}
  MESSAGE: ${err.response?.statusMessage ?? ''}
  DATA: ${err.response?.data ?? ''}
$resetColor
''',
    );
    return err;
  }
}
