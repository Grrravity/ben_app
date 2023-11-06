import 'package:ben_app/core/controller/session/session_cubit.dart';

abstract class RightsService {
  //TODO Changer les types de droits !!!
  bool hasEsignRight();
  bool hasCoworkerManagementRight();
  bool hasCreateRequestRight();
  bool hasEditOrCancelRight();
  bool salesStatAvailable();
}

class RightsServiceImpl implements RightsService {
  RightsServiceImpl({
    required this.sessionCubit,
  });
  final SessionCubit sessionCubit;

  @override
  bool hasCoworkerManagementRight() {
    return sessionCubit.state.map(
      authenticated: (state) => true,
      anonymous: (state) => false,
    );
  }

  @override
  bool hasCreateRequestRight() {
    return sessionCubit.state.map(
      authenticated: (state) => true,
      anonymous: (state) => false,
    );
  }

  @override
  bool hasEditOrCancelRight() {
    return sessionCubit.state.map(
      authenticated: (state) => true,
      anonymous: (state) => false,
    );
  }

  @override
  bool hasEsignRight() {
    return sessionCubit.state.map(
      authenticated: (state) => true,
      anonymous: (state) => false,
    );
  }

  @override
  bool salesStatAvailable() {
    return sessionCubit.state.map(
      authenticated: (state) => true,
      anonymous: (state) => false,
    );
  }
}
