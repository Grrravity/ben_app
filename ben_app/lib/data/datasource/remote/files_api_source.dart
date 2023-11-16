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
    final storageRef = storage.ref('projects/$projectName/${uploadFile.name}');
    final task = storageRef.putData(uploadFile.data);
    return (await task.snapshotEvents
            .firstWhere((element) => element.state == TaskState.running))
        .ref
        .getDownloadURL();
  }
}
