import 'package:ben_app/core/config/env.dart';
import 'package:ben_app/core/config/flavor/flavor.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

Future<void> registerServices({
  EnvType? envType,
}) async {
  getIt
    ..registerLazySingleton<Flavor>(() => Flavor.instance)
    ..registerLazySingleton<Env>(() => Env(null))
    ..registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance)
    ..registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance)
    ..registerLazySingleton<FirebaseStorage>(() => FirebaseStorage.instance);

  await getIt<Flavor>().initFlavor();
  if (envType != null) {
    getIt<Env>().env = envType;
  } else {
    getIt<Env>().env = getIt<Flavor>().flavor.defaultEnv;
  }
}
