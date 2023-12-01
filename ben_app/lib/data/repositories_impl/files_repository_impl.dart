import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/data/datasource/remote/files_api_source.dart';
import 'package:ben_app/data/model/upload_file_dto.dart';
import 'package:ben_app/domain/entities/upload_file.dart';
import 'package:ben_app/domain/repositories/files_repository.dart';
import 'package:dartz/dartz.dart';

class FilesRepositoryImpl implements FilesRepository {
  FilesRepositoryImpl({
    required this.filesApiSource,
  });

  final FilesApiSource filesApiSource;

  @override
  Future<Either<Failure, String>> uploadFile({
    required String projectName,
    required UploadFile uploadFile,
  }) async =>
      Failure.guard(() {
        final res = filesApiSource.uploadFile(
          projectName: projectName,
          uploadFile: uploadFile.toDto,
        );
        return res;
      });
}
