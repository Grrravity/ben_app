import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/utils/logger.dart';
import 'package:ben_app/data/model/project/parcours_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: one_member_abstracts
abstract class ParcoursApiSource {
  Future<ParcoursDTO> getOneParcours(
    DocumentReference<Map<String, dynamic>> parcoursPath,
  );
  Future<List<ParcoursDTO>> getParcours(
    List<DocumentReference<Map<String, dynamic>>> parcoursPaths,
  );
  Future<ParcoursDTO> updateOneParcours(ParcoursDTO parcours);

  Future<List<DocumentReference<Map<String, dynamic>>>> createParcours(
    List<ParcoursDTO> parcours,
    String projectName,
  );
}

class ParcoursApiSourceImpl implements ParcoursApiSource {
  ParcoursApiSourceImpl({required this.firestore});

  final FirebaseFirestore firestore;
  final String _parcoursCollection = 'parcours';

  @override
  Future<ParcoursDTO> getOneParcours(
    DocumentReference<Map<String, dynamic>> parcoursPath,
  ) async {
    return _log(
      () async {
        final result = await firestore
            .collection(_parcoursCollection)
            .doc(parcoursPath.id)
            .get();
        final data = result.data();
        if (data == null) {
          throw Failure.elementNotFound;
        }
        return ParcoursDTO.fromJson(
          data..addAll(<String, dynamic>{'id': result.id}),
        );
      },
      'getOneParcours',
      _parcoursCollection,
    );
  }

  @override
  Future<List<ParcoursDTO>> getParcours(
    List<DocumentReference<Map<String, dynamic>>> parcoursPaths,
  ) async {
    return _log(
      () async {
        final result = await firestore
            .collection(_parcoursCollection)
            .where(
              FieldPath.documentId,
              whereIn: parcoursPaths.map((e) => e.id).toList(),
            )
            .get();
        return result.docs
            .map(
              (e) => ParcoursDTO.fromJson(
                e.data()..addAll(<String, dynamic>{'id': e.id}),
              ),
            )
            .toList();
      },
      'getParcours',
      _parcoursCollection,
    );
  }

  @override
  Future<ParcoursDTO> updateOneParcours(ParcoursDTO parcours) async {
    return _log(
      () => Future.value(parcours),
      'updateOneParcours',
      _parcoursCollection,
    );
  }

  @override
  Future<List<DocumentReference<Map<String, dynamic>>>> createParcours(
    List<ParcoursDTO> parcours,
    String projectName,
  ) async {
    final batch = firestore.batch();
    final refs = <DocumentReference<Map<String, dynamic>>>[];
    for (final parc in parcours) {
      final now = DateTime.now().millisecondsSinceEpoch;
      final ref = firestore.doc(
        '$_parcoursCollection/${projectName}_${parc.name}_$now',
      );
      refs.add(ref);
      batch.set(ref, parc.toJson()..remove('id'));
    }
    await batch.commit();
    return refs;
  }

  static Future<T> _log<T>(
    Future<T> Function() call,
    String method,
    String collection,
  ) async {
    final logger = Logger('Parcours Firebase');
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
