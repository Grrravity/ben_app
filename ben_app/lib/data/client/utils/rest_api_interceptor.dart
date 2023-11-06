import 'package:dio/dio.dart';
import 'package:ben_app/data/client/utils/rest_api_logger.dart';
import 'package:ben_app/data/datasource/remote/session_api.dart';

class DioInterceptor extends Interceptor {
  DioInterceptor(this.sessionApiSource);

  final SessionDataSource sessionApiSource;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final authToken = await sessionApiSource.getToken();

    if (authToken != null) {
      options.headers['Authorization'] = 'Bearer ${authToken.accessToken}';
    }
    options.headers['Content-Type'] = 'application/json';

    DioApiLogger().onRequestLogger(options);

    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    DioApiLogger().onResponseLogger(response);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    DioApiLogger().onErrorLogger(err);
    super.onError(err, handler);
  }
}
