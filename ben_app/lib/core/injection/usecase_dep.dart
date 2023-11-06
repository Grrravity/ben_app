import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/domain/repositories/session_repository.dart';
import 'package:ben_app/domain/usecase/session_usecase.dart';

Future<void> registerUsecase() async {
  getIt.registerLazySingleton<SessionUsecase>(
    () => SessionUsecase(
      sessionRepository: getIt<SessionRepository>(),
    ),
  );
}
