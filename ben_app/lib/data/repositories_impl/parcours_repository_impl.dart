import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/data/datasource/remote/parcours_api_source.dart';
import 'package:ben_app/data/model/project/parcours_dto.dart';
import 'package:ben_app/domain/entities/project/parcours.dart';
import 'package:ben_app/domain/repositories/parcours_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class ParcoursRepositoryImpl implements ParcoursRepository {
  ParcoursRepositoryImpl({
    required this.parcoursApiSource,
  });

  final ParcoursApiSource parcoursApiSource;

  @override
  Future<Either<Failure, List<DocumentReference<Map<String, dynamic>>>>>
      createParcours({
    required List<Parcours> parcours,
    required String projectName,
  }) {
    return Failure.guard<List<DocumentReference<Map<String, dynamic>>>>(
        () async {
      final res = await parcoursApiSource.createParcours(
        parcours: parcours.toDto,
        projectName: projectName,
      );
      return res;
    });
  }

  @override
  Future<Either<Failure, List<Parcours>>> getParcours(
    List<DocumentReference<Map<String, dynamic>>> parcoursReferences,
  ) {
    return Failure.guard<List<Parcours>>(() async {
      final res = await parcoursApiSource.getParcours(parcoursReferences);
      return res.toEntity;
    });
  }
}
