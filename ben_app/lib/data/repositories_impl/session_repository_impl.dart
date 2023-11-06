import 'dart:async';

import 'package:ben_app/core/enum/sso_enum.dart';
import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/extension/either.dart';
import 'package:ben_app/data/datasource/remote/session_api.dart';
import 'package:ben_app/data/datasource/remote/user_api.dart';
import 'package:ben_app/data/model/jwt_dto.dart';
import 'package:ben_app/data/model/mapper/user_dto_mapper.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:ben_app/domain/entities/session.dart';
import 'package:ben_app/domain/entities/token.dart';
import 'package:ben_app/domain/entities/user.dart';
import 'package:ben_app/domain/repositories/session_repository.dart';
import 'package:dartz/dartz.dart';

class SessionRepositoryImpl implements SessionRepository {
  SessionRepositoryImpl({
    required this.sessionDataSource,
    required this.userApiSource,
    required this.creationUserMapper,
    required this.currentUserMapper,
  }) {
    _sessionStreamSubscription =
        sessionDataSource.sessionStateStream.listen((event) async {
      if (event == null) {
        _updateSession(const Session.anonymous());
        return;
      }

      // If we were already authenticated, there is no need to fetch UserProfile
      if (_session.isAuthenticated) return;

      _updateSession(
        _session = Session.authenticated(
          user: await _fetchCurrentUser().fold<User?>(
            (l) {
              if (l == Failure.elementNotFound) {
                return null;
              }
              throw l;
            },
            id,
          ),
        ),
      );
    });
  }

  void dispose() {
    _sessionStreamSubscription.cancel();
  }

  @override
  Future<void> restoreSession() async {
    await sessionDataSource.getToken();
  }

  late final StreamSubscription<Token?> _sessionStreamSubscription;
  final SessionDataSource sessionDataSource;
  final UserApiSource userApiSource;
  final CurrentUserMapper currentUserMapper;
  final CreationUserMapper creationUserMapper;
  final StreamController<Session> _sessionStreamController =
      StreamController.broadcast();
  Session _session = const Session.anonymous();

  void _updateSession(Session session) {
    _sessionStreamController.add(session);
    _session = session;
  }

  @override
  Stream<Session> get sessionStream =>
      _sessionStreamController.stream.distinct();

  @override
  Session get currentSession {
    return _session;
  }

  @override
  User? get currentUser => currentSession.profile;

  @override
  Future<Either<Failure, Token>> signInWithEmailPassword(
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
  Future<Either<Failure, Token>> signInWithSSO(
    SsoIdentityProvider idp,
  ) async {
    // Login
    final successOrFailure = await Failure.guard(() async {
      final tokenSession = await sessionDataSource.signInWithSSO(
        idp: idp,
      );
      return tokenSession;
    });

    return successOrFailure.map(
      (tokenDTO) => tokenDTO.toEntity,
    );
  }

  @override
  Future<void> logOut() async {
    await sessionDataSource.logout();
  }

  @override
  Future<Either<Failure, bool>> signupWithEmailPassword(
    Credentials credentials,
  ) async =>
      Failure.guard(
        () => sessionDataSource.signupWithEmailPassword(credentials),
      );

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
          userId: userId,
          password: password,
        ),
      );

  Future<Either<Failure, User>> _fetchCurrentUser() async {
    return Failure.guard(() async {
      final success = await sessionDataSource.getCurrentUser();
      return currentUserMapper.toEntity(success);
    });
  }

  @override
  Future<Either<Failure, User>> createUser({
    required User user,
  }) async {
    return Failure.guard(() async {
      final response = await sessionDataSource.createUserProfile(
        user: creationUserMapper.toCreationUserDto(user),
      );
      final createdUser = currentUserMapper.toEntity(response);
      _updateSession(Session.authenticated(user: user));
      return createdUser;
    });
  }
}
