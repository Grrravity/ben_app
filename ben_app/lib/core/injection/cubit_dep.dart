import 'package:ben_app/core/controller/session/session_cubit.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/core/service/rights_service.dart';
import 'package:ben_app/domain/repositories/session_repository.dart';
import 'package:ben_app/domain/usecase/session_usecase.dart';
import 'package:ben_app/presentation/pages/auth/cubit/auth_cubit.dart';

Future<void> registerSessionManagement() async {
  getIt
    ..registerSingleton<SessionCubit>(
      SessionCubit(
        sessionRepository: getIt<SessionRepository>(),
      ),
    )
    ..registerLazySingleton<RightsService>(
      () => RightsServiceImpl(
        sessionCubit: getIt<SessionCubit>(),
      ),
    )
    ..registerSingleton<AuthCubit>(
      AuthCubit(
        sessionUsecase: getIt<SessionUsecase>(),
      ),
    );
}
