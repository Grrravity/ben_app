import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/domain/repositories/files_repository.dart';
import 'package:ben_app/domain/repositories/parcours_repository.dart';
import 'package:ben_app/domain/repositories/project_repository.dart';
import 'package:ben_app/domain/repositories/session_repository.dart';
import 'package:ben_app/domain/usecase/parcours_usecase.dart';
import 'package:ben_app/domain/usecase/project_usecase.dart';
import 'package:ben_app/domain/usecase/session_usecase.dart';

Future<void> registerUsecase() async {
  getIt
    ..registerLazySingleton<SessionUsecase>(
      () => SessionUsecase(
        sessionRepository: getIt<SessionRepository>(),
      ),
    )
    ..registerLazySingleton<ProjectUsecase>(
      () => ProjectUsecase(
        projectRepository: getIt<ProjectRepository>(),
        parcoursRepository: getIt<ParcoursRepository>(),
        filesRepository: getIt<FilesRepository>(),
      ),
    )
    ..registerLazySingleton<ParcoursUsecase>(
      () => ParcoursUsecase(
        parcoursRepository: getIt<ParcoursRepository>(),
      ),
    );
}
