import 'dart:isolate';

import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/extension/either.dart';
import 'package:ben_app/domain/entities/upload_file.dart';
import 'package:ben_app/domain/entities/upload_file_result.dart';
import 'package:ben_app/domain/repositories/files_repository.dart';
import 'package:dartz/dartz.dart';

class FilesUsecase {
  FilesUsecase({
    required FilesRepository filesRepository,
  }) : _filesRepository = filesRepository;

  final FilesRepository _filesRepository;

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
