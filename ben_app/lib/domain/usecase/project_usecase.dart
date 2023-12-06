import 'dart:isolate';

import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/extension/either.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:ben_app/domain/entities/upload_file.dart';
import 'package:ben_app/domain/entities/upload_file_result.dart';
import 'package:ben_app/domain/repositories/files_repository.dart';
import 'package:ben_app/domain/repositories/parcours_repository.dart';
import 'package:ben_app/domain/repositories/project_repository.dart';
import 'package:dartz/dartz.dart';

class ProjectUsecase {
  ProjectUsecase({
    required ProjectRepository projectRepository,
    required ParcoursRepository parcoursRepository,
    required FilesRepository filesRepository,
  })  : _filesRepository = filesRepository,
        _parcoursRepository = parcoursRepository,
        _projectRepository = projectRepository;

  final ProjectRepository _projectRepository;
  final ParcoursRepository _parcoursRepository;
  final FilesRepository _filesRepository;

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

  Future<Either<Failure, List<UploadFileResult>>> uploadFiles({
    required String projectName,
    required List<UploadFile> files,
  }) async {
    try {
      final list = await Future.wait(
        files.map((file) async {
          final path = await _filesRepository.uploadFile(
            projectName: projectName,
            uploadFile: file,
          );
          if (path.isLeft()) {
            throw RemoteError(
              path.getLeft().name,
              '${file.name} could not be uploaded',
            );
          }
          return UploadFileResult(name: file.name, url: path.getRight());
        }).toList(),
        eagerError: true,
      );
      return right(list);
    } catch (_) {
      rethrow;
    }
  }
}
