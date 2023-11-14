import 'dart:async';

import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/utils/form_state.dart';
import 'package:ben_app/core/utils/input_object.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:ben_app/domain/usecase/session_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

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
    _emitDataUpdate(
      (data, builder) {
        return builder..hidden = !obscure;
      },
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

  Future<Failure?> login() async {
    final lState = state.asLoaded;
    if (lState == null) {
      return _emitSubmissionStatus(left(Failure.other));
    }

    final data = lState.data;
    if (!lState.data.canLogin) {
      return _emitSubmissionStatus(left(Failure.formIsInvalid));
    }

    emit(lState.toSubmitting);

    final okOrFailure = await sessionUsecase.login(
      Credentials.loginPassword(
        login: data.email.value!,
        password: data.password.value!,
      ),
    );

    return _emitSubmissionStatus(okOrFailure);
  }

  Future<Failure?> loginWithMicrosoft() async {
    final lState = state.asLoaded;
    if (lState == null) {
      return _emitSubmissionStatus(left(Failure.other));
    }
    emit(lState.toSubmitting);

    final sessionOrFailure = await sessionUsecase.signInWithMicrosoft();

    return _emitSubmissionStatus(sessionOrFailure);
  }

  Future<Failure?> register() async {
    final lState = state.asLoaded;
    if (lState == null) return Failure.other;

    final data = lState.data;
    if (!lState.data.passwordsAreIdenticals) {
      return _emitSubmissionStatus(left(Failure.passwordsNotIdenticals));
    }
    if (!lState.data.canRegister) {
      return _emitSubmissionStatus(left(Failure.formIsInvalid));
    }

    emit(lState.toSubmitting);

    final sessionOrFailure = await sessionUsecase.signupWithEmailPassword(
      Credentials.loginPassword(
        login: data.email.value!,
        password: data.password.value!,
      ),
    );

    return sessionOrFailure.fold(
      (l) {
        emit(
          lState.toSubmissionFailed(l),
        );
        return l;
      },
      (r) {
        emit(lState.toSubmitted);
        return null;
      },
    );
  }

  Future<Failure?> requestNewPassword() async {
    final lState = state.asLoaded;
    if (lState == null) {
      return _emitSubmissionStatus(left(Failure.other));
    }

    final data = lState.data;
    if (!lState.data.canRequestPassword) {
      return _emitSubmissionStatus(left(Failure.formIsInvalid));
    }

    emit(lState.toSubmitting);

    final sessionOrFailure = await sessionUsecase.requestNewPassword(
      data.email.value!,
    );

    return sessionOrFailure.fold(
      (l) {
        emit(
          lState.toSubmissionFailed(l),
        );
        return l;
      },
      (r) {
        emit(lState.toSubmitted);
        return null;
      },
    );
  }

  Future<Failure?> resetPassword(String code) async {
    final lState = state.asLoaded;
    if (lState == null) {
      return _emitSubmissionStatus(left(Failure.other));
    }

    final data = lState.data;
    if (!lState.data.canResetPassword) {
      return _emitSubmissionStatus(left(Failure.formIsInvalid));
    }

    emit(lState.toSubmitting);

    final sessionOrFailure = await sessionUsecase.updatePassword(
      code: code,
      password: data.password.value!,
    );

    return sessionOrFailure.fold(
      (l) {
        emit(
          lState.toSubmissionFailed(l),
        );
        return l;
      },
      (r) {
        emit(lState.toSubmitted);
        return null;
      },
    );
  }

  Failure? _emitSubmissionStatus(
    Either<Failure, dynamic> successOrFailure,
  ) {
    final lState = state.asLoaded;
    if (lState == null) return Failure.other;

    return successOrFailure.fold(
      (l) {
        emit(
          lState.toSubmissionFailed(l),
        );
        return l;
      },
      (r) {
        emit(lState.toSubmitted);
        return null;
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
