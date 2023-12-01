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
  Future<Either<Failure, List<Parcours>>> getParcours(
    List<DocumentReference<Map<String, dynamic>>> parcoursPaths,
  ) async =>
      Failure.guard<List<Parcours>>(() async {
        final res = await parcoursApiSource.getParcours(parcoursPaths);
        return res.toEntity;
      });

  @override
  Future<Either<Failure, Parcours>> getOneParcours(
    DocumentReference<Map<String, dynamic>> parcoursPath,
  ) async =>
      Failure.guard<Parcours>(() async {
        final res = await parcoursApiSource.getOneParcours(parcoursPath);
        return res.toEntity;
      });

  @override
  Future<Either<Failure, Parcours>> updateOneParcours(
    Parcours parcours,
  ) async =>
      Failure.guard<Parcours>(() async {
        final res = await parcoursApiSource.updateOneParcours(parcours.toDto);
        return res.toEntity;
      });

  @override
  Future<Either<Failure, List<DocumentReference<Map<String, dynamic>>>>>
      createParcours(
    List<ParcoursDTO> parcours,
    String projectName,
  ) async =>
          Failure.guard<List<DocumentReference<Map<String, dynamic>>>>(
              () async {
            final res = await parcoursApiSource.createParcours(
              parcours,
              projectName,
            );
            return res;
          });
}
