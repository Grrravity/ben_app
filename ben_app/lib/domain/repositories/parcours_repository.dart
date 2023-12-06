import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/domain/entities/project/parcours.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

// ignore: one_member_abstracts
abstract class ParcoursRepository {
  Future<Either<Failure, List<Parcours>>> getParcours(
    List<DocumentReference<Map<String, dynamic>>> parcoursReferences,
  );
  Future<Either<Failure, List<DocumentReference<Map<String, dynamic>>>>>
      createParcours({
    required List<Parcours> parcours,
    required String projectName,
  });
}
