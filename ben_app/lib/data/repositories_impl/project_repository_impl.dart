import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/data/datasource/remote/project_api_source.dart';
import 'package:ben_app/data/model/project/create_project_dto.cmd.dart';
import 'package:ben_app/data/model/project/project_dto.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:ben_app/domain/repositories/project_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  Future<Either<Failure, Project>> getProject(String projectId) async =>
      Failure.guard<Project>(() async {
        final res = await projectApiSource.getProject(projectId);
        return res.toEntity;
      });

  @override
  Future<Either<Failure, Project>> createProject({
    required CreateProjectCmd project,
    required List<DocumentReference<Map<String, dynamic>>> references,
  }) async =>
      Failure.guard<Project>(() async {
        final res = await projectApiSource.createProject(
          project: project.toDto,
          references: references,
        );
        return res.toEntity;
      });
}
