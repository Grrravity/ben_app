import 'package:ben_app/core/utils/logger.dart';
import 'package:ben_app/data/model/project/create_project_dto.cmd.dart';
import 'package:ben_app/data/model/project/project_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: one_member_abstracts
abstract class ProjectApiSource {
  Future<ProjectDTO> createProject(CreateProjectCmdDTO project);
  Future<List<ProjectDTO>> getProjects();
}

class ProjectApiSourceImpl implements ProjectApiSource {
  ProjectApiSourceImpl({required this.firestore});

  final FirebaseFirestore firestore;
  final String _projectCollection = 'projects';

  @override
  Future<List<ProjectDTO>> getProjects() async {
    return _log(
      () async {
        final result = await firestore.collection(_projectCollection).get();
        return result.docs
            .map(
              (e) => ProjectDTO.fromJson(
                e.data()..addAll(<String, dynamic>{'id': e.id}),
              ),
            )
            .toList();
      },
      'getProjects',
      _projectCollection,
    );
  }

  @override
  Future<ProjectDTO> createProject(CreateProjectCmdDTO project) async {
    return _log(
      () async {
        final json = project.toJson();
        final result = await firestore
            .collection(_projectCollection)
            .add(json)
            .then((value) => value);

        return ProjectDTO.fromCreateProjectCmd(
          project,
          result.id,
        );
      },
      'createProject',
      _projectCollection,
    );
  }

  static Future<T> _log<T>(
    Future<T> Function() call,
    String method,
    String collection,
  ) async {
    final logger = Logger('Project Firebase');
    try {
      logger
        ..request('REQUEST [\x1B[33m${method.toUpperCase()}\x1B[36m]')
        ..request('COLLECTION: [\x1B[33m$collection\x1B[36m]');
      final result = await call();
      logger
        ..success('RESPONSE [\x1B[33m${method.toUpperCase()}\x1B[32m]')
        ..success('COLLECTION: [\x1B[33m$collection\x1B[32m]')
        ..success('DATA: \x1B[33m$result\x1B[32m');
      return result;
    } catch (e, s) {
      logger
        ..error('ERROR [${method.toUpperCase()}]')
        ..error('COLLECTION: [\x1B[33m$collection\x1B[31m]')
        ..error('DATA: \x1B[33m$e\x1B[31m')
        ..error('STACKTRACE: \x1B[33m$s\x1B[31m');
      rethrow;
    }
  }
}
