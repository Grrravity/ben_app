import 'package:ben_app/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/session.freezed.dart';

@freezed
class Session with _$Session {
  const Session._();
  const factory Session.anonymous() = _Anonymous;
  const factory Session.authenticated({
    User? user,
  }) = _SessionAuthenticated;

  User? get profile => map(
        anonymous: (_) => null,
        authenticated: (auth) => auth.user,
      );

  bool get hasProfile => profile != null;

  bool get isAuthenticated {
    return map(
      anonymous: (_) => false,
      authenticated: (auth) => true,
    );
  }
}
