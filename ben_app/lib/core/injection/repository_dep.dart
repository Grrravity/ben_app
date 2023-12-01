import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/data/datasource/local/session_local_source.dart';
import 'package:ben_app/data/datasource/remote/files_api_source.dart';
import 'package:ben_app/data/datasource/remote/parcours_api_source.dart';
import 'package:ben_app/data/datasource/remote/project_api_source.dart';
import 'package:ben_app/data/datasource/remote/session_api_source.dart';
import 'package:ben_app/data/repositories_impl/files_repository_impl.dart';
import 'package:ben_app/data/repositories_impl/parcours_repository_impl.dart';
import 'package:ben_app/data/repositories_impl/project_repository_impl.dart';
import 'package:ben_app/data/repositories_impl/session_repository_impl.dart';
import 'package:ben_app/domain/repositories/files_repository.dart';
import 'package:ben_app/domain/repositories/parcours_repository.dart';
import 'package:ben_app/domain/repositories/project_repository.dart';
import 'package:ben_app/domain/repositories/session_repository.dart';

Future<void> registerRepository() async {
  getIt
    ..registerLazySingleton<SessionRepository>(
      () => SessionRepositoryImpl(
        sessionDataSource: getIt<SessionApiSource>(),
        sessionLocalSource: getIt<SessionLocalSource>(),
      ),
    )
    ..registerLazySingleton<ProjectRepository>(
      () => ProjectRepositoryImpl(
        projectApiSource: getIt<ProjectApiSource>(),
      ),
    )
    ..registerLazySingleton<ParcoursRepository>(
      () => ParcoursRepositoryImpl(
        parcoursApiSource: getIt<ParcoursApiSource>(),
      ),
    )
    ..registerLazySingleton<FilesRepository>(
      () => FilesRepositoryImpl(
        filesApiSource: getIt<FilesApiSource>(),
      ),
    );
}
