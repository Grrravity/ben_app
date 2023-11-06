import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/data/datasource/remote/session_api.dart';
import 'package:ben_app/data/datasource/remote/user_api.dart';
import 'package:ben_app/data/model/mapper/user_dto_mapper.dart';
import 'package:ben_app/data/repositories_impl/session_repository_impl.dart';
import 'package:ben_app/domain/repositories/session_repository.dart';

Future<void> registerRepository() async {
  getIt
    ..registerLazySingleton<CreationUserMapper>(
      CreationUserMapper.new,
    )
    ..registerLazySingleton<CurrentUserMapper>(
      CurrentUserMapper.new,
    )
    ..registerLazySingleton<MemberUserMapper>(
      MemberUserMapper.new,
    )
    ..registerLazySingleton<SessionRepository>(
      () => SessionRepositoryImpl(
        sessionDataSource: getIt<SessionDataSource>(),
        creationUserMapper: getIt<CreationUserMapper>(),
        currentUserMapper: getIt<CurrentUserMapper>(),
        userApiSource: getIt<UserApiSource>(),
      ),
    );
}
