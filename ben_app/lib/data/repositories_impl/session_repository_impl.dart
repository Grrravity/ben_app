import 'dart:async';

import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/data/datasource/local/session_local_source.dart';
import 'package:ben_app/data/datasource/remote/session_api_source.dart';
import 'package:ben_app/data/model/user_dto.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:ben_app/domain/entities/session.dart';
import 'package:ben_app/domain/entities/user.dart';
import 'package:ben_app/domain/repositories/session_repository.dart';
import 'package:dartz/dartz.dart';

class SessionRepositoryImpl implements SessionRepository {
  SessionRepositoryImpl({
    required this.sessionDataSource,
    required this.sessionLocalSource,
  });

  @override
  Future<void> restoreSession() async {
    await sessionDataSource.getCurrentAuthUser();
  }

  final SessionApiSource sessionDataSource;
  final SessionLocalSource sessionLocalSource;
  Session _session = const Session.anonymous();

  // ignore: use_setters_to_change_properties
  void _updateSession(Session session) {
    _session = session;
  }

  @override
  Stream<Session> get sessionStream {
    return sessionDataSource.sessionStateStream.asyncMap((userDto) async {
      if (userDto != null) {
        await sessionLocalSource.upsert(data: userDto);
      } else {
        await sessionLocalSource.clear();
      }

      final session = userDto == null
          ? const Session.anonymous()
          : Session.authenticated(user: userDto.toEntity);

      _updateSession(session);
      return session;
    });
  }

  @override
  Session get currentSession {
    return _session;
  }

  @override
  User? get currentUser => currentSession.profile;

  @override
  Future<Either<Failure, User>> signInWithEmailPassword(
    Credentials credentials,
  ) async {
    final tokensOrFailure = await Failure.guard(() async {
      final tokenSession = await sessionDataSource.signInWithEmailPassword(
        credentials,
      );
      return tokenSession;
    });

    return tokensOrFailure.map(
      (tokenDTO) => tokenDTO.toEntity,
    );
  }

  @override
  Future<void> logOut() async {
    await sessionDataSource.logout();
  }

  @override
  Future<Either<Failure, User>> signupWithEmailPassword(
    Credentials credentials,
  ) async {
    final tokensOrFailure = await Failure.guard(() async {
      final tokenSession = await sessionDataSource.signupWithEmailPassword(
        credentials,
      );
      return tokenSession;
    });

    return tokensOrFailure.map(
      (tokenDTO) => tokenDTO.toEntity,
    );
  }

  @override
  Future<Either<Failure, bool>> requestNewPassword(
    String email,
  ) async =>
      Failure.guard(
        () => sessionDataSource.requestNewPassword(email),
      );

  @override
  Future<Either<Failure, bool>> updatePassword({
    required String userId,
    required String password,
  }) async =>
      Failure.guard(
        () => sessionDataSource.updatePassword(
          code: userId,
          password: password,
        ),
      );
}
