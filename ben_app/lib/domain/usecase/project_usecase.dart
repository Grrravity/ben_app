import 'dart:isolate';

import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/extension/either.dart';
import 'package:ben_app/data/model/project/create_project_dto.cmd.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:ben_app/domain/entities/upload_file.dart';
import 'package:ben_app/domain/entities/upload_file_result.dart';
import 'package:ben_app/domain/repositories/files_repository.dart';
import 'package:ben_app/domain/repositories/parcours_repository.dart';
import 'package:ben_app/domain/repositories/project_repository.dart';
import 'package:dartz/dartz.dart';

class ProjectUsecase {
  ProjectUsecase({
    required this.projectRepository,
    required this.parcoursRepository,
    required this.filesRepository,
  });

  final ProjectRepository projectRepository;
  final ParcoursRepository parcoursRepository;
  final FilesRepository filesRepository;

  Future<Either<Failure, List<Project>>> getProjects() =>
      projectRepository.getProjects();

  Future<Either<Failure, Project>> getProject(String projectId) =>
      projectRepository.getProject(projectId);

  Future<Either<Failure, Project>> createProject(
    CreateProjectCmd projectCmd,
  ) async {
    final references = await parcoursRepository.createParcours(
      projectCmd.toDto.parcours,
      projectCmd.name,
    );

    if (references.isLeft()) throw references.getLeft();

    return projectRepository.createProject(projectCmd, references.getRight());
  }

  Future<Either<Failure, List<UploadFileResult>>> uploadFiles({
    required String projectName,
    required List<UploadFile> files,
  }) async {
    try {
      final list = await Future.wait(
        files.map((file) async {
          final path = await filesRepository.uploadFile(
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
