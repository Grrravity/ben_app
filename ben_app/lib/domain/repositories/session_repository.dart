import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:ben_app/domain/entities/session.dart';
import 'package:ben_app/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class SessionRepository {
  Stream<Session> get sessionStream;
  Session get currentSession;
  User? get currentUser;

  Future<Either<Failure, User>> signInWithEmailPassword(
    Credentials credentials,
  );
  Future<Either<Failure, User>> signupWithEmailPassword(
    Credentials credentials,
  );
  Future<Either<Failure, User>> signInWithMicrosoft();
  Future<Either<Failure, bool>> requestNewPassword(String email);
  Future<Either<Failure, bool>> updatePassword({
    required String code,
    required String password,
  });
  Future<void> logOut();

  Future<void> restoreSession();
}
