import 'package:ben_app/data/model/project_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: one_member_abstracts
abstract class ProjectApiSource {
  Future<ProjectDTO> createProject(ProjectDTO project);
}

class ProjectApiSourceImpl implements ProjectApiSource {
  ProjectApiSourceImpl({required this.firestore});

  final FirebaseFirestore firestore;

  @override
  Future<ProjectDTO> createProject(ProjectDTO project) async {
    await Future.delayed(const Duration(seconds: 1));
    return ProjectDTO.fromJson({}); //FIXME
  }
}
