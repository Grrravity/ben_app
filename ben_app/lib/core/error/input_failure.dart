import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:ben_app/core/utils/logger.dart';

enum InputFailure implements Exception {
  date("La date n'est pas valide"),
  zipCode("Le code postal n'est pas valide"),
  noCityForThisZipCode('Ce code postal ne correspond à aucune ville'),
  listNotFound('Élement introuvable'),
  avatarRequired('Une photo de profil est requise'),
  invalidEmail("Le format de l'email est invalide"),
  requiredField('Ce champs est requis'),
  other('Une erreur inattendu est survenue'),
  ;

  const InputFailure(this.label);

  final String label;

  static FutureOr<Either<InputFailure, DataT>> guard<DataT>(
    FutureOr<DataT> Function() call,
  ) async {
    try {
      final result = await call();
      return right(result);
    } on InputFailure catch (e) {
      return left(e);
    } catch (e, s) {
      Logger.e(e, error: e, stackTrace: s);
      return left(InputFailure.other);
    }
  }
}
