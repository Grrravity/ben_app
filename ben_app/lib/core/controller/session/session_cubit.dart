import 'dart:async';

import 'package:ben_app/domain/entities/session.dart';
import 'package:ben_app/domain/repositories/session_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

/// [SessionCubit] exposes current [Session] state to
/// widgets.
///
/// It listens to [Session] changes to always be up to date.
class SessionCubit extends Cubit<Session> {
  SessionCubit({
    required this.sessionRepository,
  }) : super(sessionRepository.currentSession) {
    _sessionUpdatesSubscription = sessionRepository.sessionStream.listen(emit);
    sessionRepository.restoreSession();
  }

  final SessionRepository sessionRepository;

  StreamSubscription<Session>? _sessionUpdatesSubscription;

  Stream<bool> get isAuthenticated async* {
    yield state.map(
      anonymous: (_) => false,
      authenticated: (_) => true,
    );
    yield* stream.map(
      (event) => event.map(
        anonymous: (_) => false,
        authenticated: (_) => true,
      ),
    );
  }

  Stream<Session> get sessionUpdate => sessionRepository.sessionStream;

  @override
  Future<void> close() async {
    await _sessionUpdatesSubscription?.cancel();
    await super.close();
  }
}
