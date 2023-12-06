import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

// ignore: one_member_abstracts
abstract class ProjectRepository {
  Future<Either<Failure, List<Project>>> getProjects();
  Future<Either<Failure, Project>> getProject(String projectId);
  Future<Either<Failure, Project>> createProject({
    required CreateProjectCmd project,
    required List<DocumentReference<Map<String, dynamic>>> references,
  });
}
