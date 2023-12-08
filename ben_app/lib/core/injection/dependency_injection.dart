import 'package:ben_app/core/config/flavor/flavor.dart';
import 'package:ben_app/core/injection/cubit_dep.dart';
import 'package:ben_app/core/injection/datasource_dep.dart';
import 'package:ben_app/core/injection/repository_dep.dart';
import 'package:ben_app/core/injection/service_dep.dart';
import 'package:ben_app/core/injection/usecase_dep.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> initGetIt({
  EnvType? envType,
}) async {
  await registerServices(envType: envType);
  //await registerApiClients(); // No rest client ATM
  await registerDataSources();
  await registerRepository();
  await registerUsecase();
  await registerSessionManagement();
  //addDioInterceptor(); // No rest client ATM
}
