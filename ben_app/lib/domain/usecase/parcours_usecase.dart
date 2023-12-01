import 'dart:isolate';

import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/extension/either.dart';
import 'package:ben_app/domain/entities/project/parcours.dart';
import 'package:ben_app/domain/entities/upload_file.dart';
import 'package:ben_app/domain/entities/upload_file_result.dart';
import 'package:ben_app/domain/repositories/files_repository.dart';
import 'package:ben_app/domain/repositories/parcours_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class ParcoursUsecase {
  ParcoursUsecase({
    required this.parcoursRepository,
    required this.filesRepository,
  });

  final ParcoursRepository parcoursRepository;
  final FilesRepository filesRepository;

  Future<Either<Failure, List<Parcours>>> getParcours(
    List<DocumentReference<Map<String, dynamic>>> parcoursPaths,
  ) =>
      parcoursRepository.getParcours(parcoursPaths);

  Future<Either<Failure, Parcours>> getOneParcours(
    DocumentReference<Map<String, dynamic>> parcoursPath,
  ) =>
      parcoursRepository.getOneParcours(parcoursPath);

  Future<Either<Failure, Parcours>> updateOneParcours(Parcours parcours) =>
      parcoursRepository.updateOneParcours(parcours);

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
