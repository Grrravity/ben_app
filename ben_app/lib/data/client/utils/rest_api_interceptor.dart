import 'package:ben_app/data/client/utils/rest_api_logger.dart';
import 'package:ben_app/data/datasource/remote/session_api.dart';
import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  DioInterceptor({this.sessionApiSource, required this.clientName});

  final SessionDataSource? sessionApiSource;
  final String clientName;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (sessionApiSource != null) {
      final authToken = await sessionApiSource!.getToken();

      if (authToken != null) {
        options.headers['Authorization'] = 'Bearer ${authToken.accessToken}';
      }
      options.headers['Content-Type'] = 'application/json';
    }
    DioApiLogger(clientName).onRequestLogger(options);

    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    DioApiLogger(clientName).onResponseLogger(response);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    DioApiLogger(clientName).onErrorLogger(err);
    super.onError(err, handler);
  }
}
