import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/data/datasource/remote/project_api_source.dart';
import 'package:ben_app/data/model/project/create_project_dto.cmd.dart';
import 'package:ben_app/data/model/project/project_dto.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:ben_app/domain/repositories/project_repository.dart';
import 'package:dartz/dartz.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  ProjectRepositoryImpl({
    required this.projectApiSource,
  });

  final ProjectApiSource projectApiSource;

  @override
  Future<Either<Failure, List<Project>>> getProjects() async =>
      Failure.guard<List<Project>>(() async {
        final res = await projectApiSource.getProjects();
        return res.toEntity;
      });

  @override
  Future<Either<Failure, Project>> createProject(
    CreateProjectCmd project,
  ) async =>
      Failure.guard<Project>(() async {
        final res = await projectApiSource.createProject(project.toDto);
        return res.toEntity;
      });
}
