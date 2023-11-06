import 'package:dartz/dartz.dart';
import 'package:ben_app/core/enum/sso_enum.dart';
import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:ben_app/domain/entities/session.dart';
import 'package:ben_app/domain/entities/token.dart';
import 'package:ben_app/domain/entities/user.dart';

abstract class SessionRepository {
  Stream<Session> get sessionStream;
  Session get currentSession;
  User? get currentUser;

  Future<Either<Failure, User>> createUser({
    required User user,
  });
  Future<Either<Failure, Token>> signInWithEmailPassword(
    Credentials credentials,
  );
  Future<Either<Failure, Token>> signInWithSSO(SsoIdentityProvider idp);
  Future<Either<Failure, bool>> signupWithEmailPassword(
    Credentials credentials,
  );
  Future<Either<Failure, bool>> requestNewPassword(String email);
  Future<Either<Failure, bool>> updatePassword({
    required String userId,
    required String password,
  });
  Future<void> logOut();

  Future<void> restoreSession();
}
