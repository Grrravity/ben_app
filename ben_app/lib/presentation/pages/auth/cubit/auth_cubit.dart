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

  Future<Failure?> login() async {
    final lState = state.asLoaded;
    if (lState == null) return Failure.other;

    final data = lState.data;
    if (data.email.failure != null) return Failure.emailNotValid;
    if (data.password.failure != null) return Failure.passwordInvalid;

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
    if (lState == null) return Failure.other;
    emit(lState.toSubmitting);

    final okOrFailure = await sessionUsecase.signInWithMicrosoft();

    return _emitSubmissionStatus(okOrFailure);
  }

  Future<Failure?> register() async {
    final lState = state.asLoaded;
    if (lState == null) return Failure.other;

    final data = lState.data;

    if (!data.passwordsAreIdenticals) {
      emit(lState.copyWith(failure: Failure.passwordsNotIdenticals));
      return Failure.passwordsNotIdenticals;
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

  Future<Failure?> requestNewPassword() async {
    final lState = state.asLoaded;
    if (lState == null) return Failure.other;

    final data = lState.data;

    emit(lState.toSubmitting);

    final sessionOrFailure = await sessionUsecase.requestNewPassword(
      data.email.value!,
    );

    setPassword('');
    setConfirmPassword('');

    return _emitSubmissionStatus(sessionOrFailure);
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
