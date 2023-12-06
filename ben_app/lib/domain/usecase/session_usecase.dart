import 'dart:async';

import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:ben_app/domain/entities/user.dart';
import 'package:ben_app/domain/repositories/session_repository.dart';
import 'package:dartz/dartz.dart';

class SessionUsecase {
  SessionUsecase({
    required SessionRepository sessionRepository,
  }) : _sessionRepository = sessionRepository;

  final SessionRepository _sessionRepository;

  User? get currentUser => _sessionRepository.currentUser;

  ///Login
  Future<Either<Failure, User>> login(Credentials credentials) async =>
      _sessionRepository.signInWithEmailPassword(credentials);

  Future<Either<Failure, User>> signupWithEmailPassword(
    Credentials credentials,
  ) async =>
      _sessionRepository.signupWithEmailPassword(credentials);

  Future<Either<Failure, User>> signInWithMicrosoft() async =>
      _sessionRepository.signInWithMicrosoft();

  Future<Either<Failure, bool>> requestNewPassword(
    String email,
  ) async =>
      _sessionRepository.requestNewPassword(email);

  Future<Either<Failure, bool>> updatePassword({
    required String code,
    required String password,
  }) async =>
      _sessionRepository.updatePassword(
        code: code,
        password: password,
      );
  Future<void> logOut() async => _sessionRepository.logOut();
}
