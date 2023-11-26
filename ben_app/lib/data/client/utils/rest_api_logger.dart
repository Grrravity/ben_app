import 'package:ben_app/core/error/logger.dart';
import 'package:dio/dio.dart';

class DioApiLogger {
  DioApiLogger(this.clientName);
  final logger = Logger('API');

  final String clientName;

  static String normalColor = '\x1B[36m';
  static String errorColor = '\x1B[31m';
  static String resetColor = '\x1B[0m';
  static String yellowColor = '\x1B[33m';
  static String greenColor = '\x1B[32m';

  RequestOptions onRequestLogger(RequestOptions request) {
    final requestHeader = {...request.headers};
    if (requestHeader['Authorization'] != null) {
      requestHeader
        ..remove('Authorization')
        ..addAll(
          {
            'Authorization':
                '${(request.headers['Authorization'] as String).substring(0, 20)}...',
          },
        );
    }

    logger
      ..request('REQUEST [${request.method}] - CLIENT [${_yellow(clientName)}]')
      ..request(
        'BASE URL: ${_yellow(request.baseUrl)} - PATH: ${_yellow(request.path)}',
      )
      ..request('HEADERS: ${_yellow(requestHeader)}')
      ..request('QUERY-PARAMETERS: ${_yellow(request.queryParameters)}');

    return request;
  }

  Response<dynamic> onResponseLogger(Response<dynamic> response) {
    final data = response.data == null
        ? 'empty'
        : response.data.toString().length > 100
            ? '${response.data.toString().substring(0, 100)}...'
            : response.data.toString();

    logger
      ..success(
        'RESPONSE[${_green(response.statusCode)}] - CLIENT [${_yellow(clientName)}]',
      )
      ..success('PATH: ${_yellow(response.requestOptions.path)}')
      ..success('DATA: ${_yellow(data)}');
    return response;
  }

  DioException onErrorLogger(DioException err) {
    logger
      ..error(
        'ERROR[${err.response?.statusCode ?? '---'}] - CLIENT [${_yellowErr(clientName)}]',
      )
      ..error('PATH: ${_yellowErr(err.requestOptions.path)}')
      ..error(
        'MESSAGE: ${_yellowErr(err.response?.statusMessage ?? 'empty')}',
      )
      ..error(
        'DATA: ${_yellowErr(err.response?.data ?? 'empty')}',
      );
    return err;
  }

  String _green(dynamic data) {
    return greenColor + data.toString() + normalColor;
  }

  String _yellow(dynamic data) {
    return yellowColor + data.toString() + normalColor;
  }

  String _yellowErr(dynamic data) {
    return yellowColor + data.toString() + errorColor;
  }
}
