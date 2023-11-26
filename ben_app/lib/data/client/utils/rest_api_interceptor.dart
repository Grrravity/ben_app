import 'package:ben_app/data/client/utils/rest_api_logger.dart';
import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  DioInterceptor({required this.clientName});

  final String clientName;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
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
