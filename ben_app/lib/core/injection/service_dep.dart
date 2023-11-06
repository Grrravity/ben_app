
import 'package:ben_app/core/config/env.dart';
import 'package:ben_app/core/config/flavor/flavor.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';

Future<void> registerServices({
  EnvType? envType,
}) async {
  getIt
    ..registerLazySingleton<Flavor>(() => Flavor.instance)
    ..registerLazySingleton<Env>(() => Env(null));

  await getIt<Flavor>().initFlavor();
  if (envType != null) {
    getIt<Env>().env = envType;
  } else {
    getIt<Env>().env = getIt<Flavor>().flavor.defaultEnv;
  }
}
