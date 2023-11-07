import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/data/client/api_client.dart';
import 'package:ben_app/data/client/utils/rest_api_handler.dart';
import 'package:ben_app/data/datasource/local/session_local_source.dart';
import 'package:ben_app/data/datasource/remote/session_api_source.dart';
import 'package:ben_app/data/datasource/remote/user_api.dart';
import 'package:dio/dio.dart';

Future<void> registerDataSources() async {
  await _registerLocalSources();
  await _registerApiSources();
}

Future<void> _registerLocalSources() async {
  getIt.registerLazySingleton<SessionLocalSource>(
    SessionLocalSourceImpl.new,
  );
}

Future<void> _registerApiSources() async {
  getIt
    ..registerLazySingleton<SessionApiSource>(
      () => SessionApiSourceImpl(
        localSource: getIt<SessionLocalSource>(),
      ),
    )
    ..registerLazySingleton<UserApiSource>(
      () => UserApiSourceImpl(
        client: RestApiHandler(
          client: getIt<Dio>(
            instanceName: ApiClient.instanceName,
          ),
        ),
      ),
    );
}
