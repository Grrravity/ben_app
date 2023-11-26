import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/domain/entities/upload_file.dart';
import 'package:dartz/dartz.dart';

// ignore: one_member_abstracts
abstract class FilesRepository {
  Future<Either<Failure, String>> uploadFile({
    required String projectName,
    required UploadFile uploadFile,
  });
}
