import 'dart:async';

import 'package:ben_app/core/utils/logger.dart';
import 'package:dartz/dartz.dart';

enum InputFailure implements Exception {
  invalidEmail('Email invalide'),
  requiredField('Champs non renseigné'),
  other('Une erreur inattendu est survenue');

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
