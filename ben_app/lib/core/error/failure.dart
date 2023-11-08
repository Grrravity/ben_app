import 'dart:async';

import 'package:ben_app/core/utils/logger.dart';
import 'package:dartz/dartz.dart';

enum Failure implements Exception {
  authentication('Email ou mot de passe incorrect'),
  connectivity('Merci de vérifier votre connection internet'),
  other('Une erreur inattendu est survenue'),
  unauthorized('Accès refusé'),
  passwordsNotIdenticals('Les mots de passes doivent etre identiques'),
  invalidCommand('Commande invalide'),
  elementNotFound('Élement introuvable'),
  emailNotValid("L'email n'est pas valide"),
  textIsEmpty('Le champs est vide'),
  notVerified("L'email doit être vérifié"),
  expiredSession('Session expirée'),
  widgetTreeError("Impossible d'afficher la page");

  const Failure(this.label);

  final String label;

  static Future<Either<Failure, T>> guard<T>(
    Future<T> Function() call,
  ) async {
    try {
      final result = await call();
      return right(result);
    } on Failure catch (e) {
      return left(e);
    } catch (e, s) {
      Logger.e(e, error: e, stackTrace: s);
      return left(Failure.other);
    }
  }
}
