import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/data/datasource/local/session_local_source.dart';
import 'package:ben_app/data/datasource/remote/session_api_source.dart';
import 'package:ben_app/data/repositories_impl/session_repository_impl.dart';
import 'package:ben_app/domain/repositories/session_repository.dart';

Future<void> registerRepository() async {
  getIt.registerLazySingleton<SessionRepository>(
    () => SessionRepositoryImpl(
      sessionDataSource: getIt<SessionApiSource>(),
      sessionLocalSource: getIt<SessionLocalSource>(),
    ),
  );
}
