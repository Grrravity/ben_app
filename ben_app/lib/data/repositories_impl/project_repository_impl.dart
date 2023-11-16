import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/data/datasource/remote/project_api_source.dart';
import 'package:ben_app/data/model/project_dto.dart';
import 'package:ben_app/domain/entities/project.dart';
import 'package:ben_app/domain/repositories/project_repository.dart';
import 'package:dartz/dartz.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  ProjectRepositoryImpl({
    required this.projectApiSource,
  });

  final ProjectApiSource projectApiSource;

  @override
  Future<Either<Failure, Project>> createProject(Project project) async =>
      Failure.guard<Project>(() async {
        final res = await projectApiSource.createProject(project.toDto);
        return res.toEntity;
      });
}
