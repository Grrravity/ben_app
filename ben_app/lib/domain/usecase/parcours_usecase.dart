import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/domain/entities/project/parcours.dart';
import 'package:ben_app/domain/repositories/parcours_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class ParcoursUsecase {
  ParcoursUsecase({
    required ParcoursRepository parcoursRepository,
  }) : _parcoursRepository = parcoursRepository;

  final ParcoursRepository _parcoursRepository;

  Future<Either<Failure, List<Parcours>>> getParcours(
    List<DocumentReference<Map<String, dynamic>>> parcoursReferences,
  ) =>
      _parcoursRepository.getParcours(parcoursReferences);

  Future<Either<Failure, List<DocumentReference<Map<String, dynamic>>>>>
      createParcours({
    required List<CreateParcoursCmd> parcours,
    required String projectName,
  }) =>
          _parcoursRepository.createParcours(
            parcours: parcours,
            projectName: projectName,
          );
}
