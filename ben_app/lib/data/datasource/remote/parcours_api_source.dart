import 'package:ben_app/core/utils/logger.dart';
import 'package:ben_app/data/model/project/parcours_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ParcoursApiSource {
  ParcoursApiSource({required FirebaseFirestore firestore})
      : _firestore = firestore;

  final FirebaseFirestore _firestore;
  final String _parcoursCollection = 'parcours';

  Future<List<ParcoursDTO>> getParcours(
    List<DocumentReference<Map<String, dynamic>>> parcoursReferences,
  ) async {
    return _log(
      () async {
        final results = <ParcoursDTO>[];
        for (final reference in parcoursReferences) {
          final result = await _firestore
              .collection(_parcoursCollection)
              .doc(reference.id)
              .get();
          final data = result.data();
          if (data != null) {
            results.add(ParcoursDTO.fromJson(data..addAll({'id': result.id})));
          }
        }
        return results;
      },
      'getProjects',
      _parcoursCollection,
    );
  }

  Future<List<DocumentReference<Map<String, dynamic>>>> createParcours({
    required List<CreateParcoursCmdDTO> parcours,
    required String projectName,
  }) async {
    return _log(
      () async {
        final batch = _firestore.batch();
        final refs = <DocumentReference<Map<String, dynamic>>>[];
        for (final element in parcours) {
          final now = DateTime.now().millisecondsSinceEpoch;
          final ref = _firestore.doc(
            '$_parcoursCollection/${projectName}_${element.name}_$now',
          );
          refs.add(ref);
          batch.set(ref, element.toJson());
        }
        await batch.commit();

        return refs;
      },
      'createParcours',
      _parcoursCollection,
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
