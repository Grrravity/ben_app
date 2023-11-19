import 'package:ben_app/core/utils/logger.dart';
import 'package:ben_app/data/model/upload_file_dto.dart';
import 'package:firebase_storage/firebase_storage.dart';

// ignore: one_member_abstracts
abstract class FilesApiSource {
  Future<String> uploadFile({
    required String projectName,
    required UploadFileDTO uploadFile,
  });
}

class FilesApiSourceImpl implements FilesApiSource {
  FilesApiSourceImpl({required this.storage});

  final FirebaseStorage storage;

  @override
  Future<String> uploadFile({
    required String projectName,
    required UploadFileDTO uploadFile,
  }) async {
    return _log(
      () async {
        final storageRef =
            storage.ref('projects/$projectName/${uploadFile.name}');
        final task = storageRef.putData(uploadFile.data);
        return (await task.snapshotEvents
                .firstWhere((element) => element.state == TaskState.success))
            .ref
            .getDownloadURL();
      },
      'projects',
      'putData',
    );
  }

  static Future<T> _log<T>(
    Future<T> Function() call,
    String method,
    String collection,
  ) async {
    final logger = Logger('Files Firestore');
    try {
      logger
        ..request('REQUEST [${method.toUpperCase()}]')
        ..request('COLLECTION: \x1B[33m$collection\x1B[36m');
      final result = await call();
      logger
        ..request('RESPONSE [${method.toUpperCase()}]')
        ..request('COLLECTION: \x1B[33m$collection\x1B[36m')
        ..request('DATA: \x1B[33m$result\x1B[36m');
      return result;
    } catch (e, s) {
      logger
        ..error('ERROR [${method.toUpperCase()}]')
        ..request('COLLECTION: \x1B[33m$collection\x1B[31m')
        ..error('DATA: \x1B[33m$e\x1B[31m')
        ..error('DATA: \x1B[33m$s\x1B[31m');
      rethrow;
    }
  }
}
