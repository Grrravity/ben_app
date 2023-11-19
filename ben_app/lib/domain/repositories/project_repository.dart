import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/domain/entities/project.dart';
import 'package:dartz/dartz.dart';

// ignore: one_member_abstracts
abstract class ProjectRepository {
  Future<Either<Failure, List<Project>>> getProjects();
  Future<Either<Failure, Project>> createProject(CreateProjectCmd project);
}
