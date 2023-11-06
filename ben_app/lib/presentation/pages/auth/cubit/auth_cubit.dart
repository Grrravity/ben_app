import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:ben_app/core/enum/sso_enum.dart';
import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/utils/form_state.dart';
import 'package:ben_app/core/utils/input_object.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:ben_app/domain/usecase/session_usecase.dart';

part '../../../generated/pages/auth/cubit/auth_cubit.freezed.dart';
part '../../../generated/pages/auth/cubit/auth_cubit.g.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<FormBlocState<AuthFormData>> {
  AuthCubit({
    required this.sessionUsecase,
  }) : super(
          FormBlocState.loaded(
            data: AuthFormData.empty(),
            canBeSubmitted: true,
          ),
        );

  final SessionUsecase sessionUsecase;

  void init() {}

  void setEmail(String? email) => _emitDataUpdate(
        (data, builder) {
          return builder..email = data.email.copyValue(email);
        },
      );

  void setPassword(String? password) {
    _emitDataUpdate(
      (data, builder) {
        return builder..password = data.password.copyValue(password);
      },
    );
  }

  void toggleObscure(bool obscure) {
    final loadedState = state.asLoaded!;

    emit(
      loadedState.copyWithData(
        loadedState.data.copyWith(
          hidden: !loadedState.data.hidden,
        ),
      ),
    );
  }

  void setConfirmPassword(String? confirmPassword) {
    _emitDataUpdate(
      (data, builder) {
        return builder
          ..confirmPassword = data.confirmPassword.copyValue(confirmPassword);
      },
    );
  }

  Future<bool> login() async {
    final lState = state.asLoaded;
    if (lState == null) return false;

    final data = lState.data;

    emit(lState.toSubmitting);

    final okOrFailure = await sessionUsecase.login(
      Credentials.loginPassword(
        login: data.email.value!,
        password: data.password.value!,
      ),
    );

    return _emitSubmissionStatus(okOrFailure);
  }

  Future<bool> signInWithSSO(SsoIdentityProvider idp) async {
    final lState = state.asLoaded;
    if (lState == null) return false;

    emit(lState.toSubmitting);

    final sessionOrFailure = await sessionUsecase.signInWithSSO(idp);

    return _emitSubmissionStatus(sessionOrFailure);
  }

  Future<bool> register() async {
    final lState = state.asLoaded;
    if (lState == null) return false;

    final data = lState.data;

    if (!data.passwordsAreIdenticals) {
      emit(lState.copyWith(failure: Failure.passwordsNotIdenticals));
      return false;
    }

    emit(lState.toSubmitting);

    final sessionOrFailure = await sessionUsecase.signupWithEmailPassword(
      Credentials.loginPassword(
        login: data.email.value!,
        password: data.password.value!,
      ),
    );

    return _emitSubmissionStatus(sessionOrFailure);
  }

  Future<bool> requestNewPassword() async {
    final lState = state.asLoaded;
    if (lState == null) return false;

    final data = lState.data;

    emit(lState.toSubmitting);

    final sessionOrFailure = await sessionUsecase.requestNewPassword(
      data.email.value!,
    );

    setPassword('');
    setConfirmPassword('');

    return _emitSubmissionStatus(sessionOrFailure);
  }

  bool _emitSubmissionStatus(
    Either<Failure, dynamic> successOrFailure,
  ) {
    final lState = state.asLoaded;
    if (lState == null) return false;

    return successOrFailure.fold(
      (l) {
        if (l == Failure.ssoModalClosed) {
          emit(
            lState.copyWithNoFailure(),
          );
          return false;
        }
        emit(
          lState.toSubmissionFailed(l),
        );
        return false;
      },
      (r) {
        emit(lState.toSubmitted);
        return true;
      },
    );
  }

  void _emitDataUpdate(
    AuthFormDataBuilder Function(
      AuthFormData data,
      AuthFormDataBuilder builder,
    ) update,
  ) {
    final lState = state.asLoaded;
    if (lState == null) return;

    final data = update(lState.data, lState.data.builder).build();
    emit(
      lState
          .copyWithData(
            data,
          )
          .copyWithNoFailure(),
    );
  }
}
