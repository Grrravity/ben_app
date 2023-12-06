import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/extension/either.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:ben_app/domain/repositories/parcours_repository.dart';
import 'package:ben_app/domain/repositories/project_repository.dart';
import 'package:dartz/dartz.dart';

class ProjectUsecase {
  ProjectUsecase({
    required ProjectRepository projectRepository,
    required ParcoursRepository parcoursRepository,
  })  : _parcoursRepository = parcoursRepository,
        _projectRepository = projectRepository;

  final ProjectRepository _projectRepository;
  final ParcoursRepository _parcoursRepository;

  Future<Either<Failure, List<Project>>> getProjects() =>
      _projectRepository.getProjects();

  Future<Either<Failure, Project>> getProject(String projectId) =>
      _projectRepository.getProject(projectId);

  Future<Either<Failure, Project>> createProject(
    CreateProjectCmd project,
  ) async {
    final refs = await _parcoursRepository.createParcours(
      parcours: project.parcours,
      projectName: project.name,
    );
    if (refs.isLeft()) throw Failure.other;
    return _projectRepository.createProject(
      project: project,
      references: refs.getRight(),
    );
  }
}
