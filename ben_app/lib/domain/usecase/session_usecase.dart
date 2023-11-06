import 'dart:async';

import 'package:ben_app/core/enum/sso_enum.dart';
import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/extension/either.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:ben_app/domain/entities/token.dart';
import 'package:ben_app/domain/entities/user.dart';
import 'package:ben_app/domain/repositories/session_repository.dart';
import 'package:dartz/dartz.dart';

class SessionUsecase {
  SessionUsecase({
    required this.sessionRepository,
  });

  final SessionRepository sessionRepository;

  ///Login
  Future<Either<Failure, void>> login(
    Credentials credentials, {
    bool isAfterRegister = false,
  }) async {
    final tokenOrFailure =
        await sessionRepository.signInWithEmailPassword(credentials);

    return tokenOrFailure.fold(left, (r) => right(null));
  }

  User? get currentUser => sessionRepository.currentUser;

  Future<Either<Failure, Token>> signInWithSSO(
    SsoIdentityProvider idp,
  ) async {
    return sessionRepository.signInWithSSO(idp);
  }

  Future<Either<Failure, User>> createUser({
    required User user,
  }) async {
    return sessionRepository.createUser(user: user);
  }

  Future<Either<Failure, void>> signupWithEmailPassword(
    Credentials information,
  ) async {
    return sessionRepository
        .signupWithEmailPassword(information)
        .bindFuture((isRegistered) {
      return login(
        information,
        isAfterRegister: true,
      );
    });
  }

  Future<Either<Failure, bool>> requestNewPassword(
    String email,
  ) =>
      sessionRepository.requestNewPassword(email);

  Future<Either<Failure, bool>> updatePassword({
    required String userId,
    required String password,
  }) async {
    return sessionRepository.updatePassword(
      userId: userId,
      password: password,
    );
  }

  Future<void> logOut() async {
    await sessionRepository.logOut();
  }
}
