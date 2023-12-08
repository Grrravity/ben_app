import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/data/datasource/local/session_local_source.dart';
import 'package:ben_app/data/datasource/remote/files_api_source.dart';
import 'package:ben_app/data/datasource/remote/parcours_api_source.dart';
import 'package:ben_app/data/datasource/remote/project_api_source.dart';
import 'package:ben_app/data/datasource/remote/session_api_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

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
      () => SessionApiSource(
        firebaseAuth: getIt<FirebaseAuth>(),
      ),
    )
    ..registerLazySingleton<ProjectApiSource>(
      () => ProjectApiSource(
        firestore: getIt<FirebaseFirestore>(),
      ),
    )
    ..registerLazySingleton<FilesApiSource>(
      () => FilesApiSource(
        storage: getIt<FirebaseStorage>(),
      ),
    )
    ..registerLazySingleton<ParcoursApiSource>(
      () => ParcoursApiSource(
        firestore: getIt<FirebaseFirestore>(),
      ),
    );
}
