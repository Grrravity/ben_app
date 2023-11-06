import 'package:dio/dio.dart';
import 'package:ben_app/core/config/env.dart';
import 'package:ben_app/core/config/flavor/flavor.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/data/client/api_client.dart';
import 'package:ben_app/data/client/utils/rest_api_interceptor.dart';
import 'package:ben_app/data/datasource/remote/session_api.dart';

Future<void> registerApiClients() async {
  getIt
    ..registerLazySingleton<Dio>(
      () => ApiClient.build(
        getIt<Env>().env.baseUrl,
      ),
      instanceName: ApiClient.instanceName,
    );
}

void addDioInterceptor() {
  getIt<Dio>(instanceName: ApiClient.instanceName).interceptors.add(
        DioInterceptor(getIt<SessionDataSource>()),
      );
}
