import 'dart:async';

import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:ben_app/domain/entities/user.dart';
import 'package:ben_app/domain/repositories/session_repository.dart';
import 'package:dartz/dartz.dart';

class SessionUsecase {
  SessionUsecase({
    required this.sessionRepository,
  });

  final SessionRepository sessionRepository;

  User? get currentUser => sessionRepository.currentUser;

  ///Login
  Future<Either<Failure, User>> login(Credentials credentials) async =>
      sessionRepository.signInWithEmailPassword(credentials);

  Future<Either<Failure, User>> signupWithEmailPassword(
    Credentials credentials,
  ) async =>
      sessionRepository.signupWithEmailPassword(credentials);

  Future<Either<Failure, User>> signInWithMicrosoft() async =>
      sessionRepository.signInWithMicrosoft();

  Future<Either<Failure, bool>> requestNewPassword(
    String email,
  ) async =>
      sessionRepository.requestNewPassword(email);

  Future<Either<Failure, bool>> updatePassword({
    required String userId,
    required String password,
  }) async =>
      sessionRepository.updatePassword(
        userId: userId,
        password: password,
      );

  Future<void> logOut() async => sessionRepository.logOut();
}
