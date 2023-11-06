import 'package:ben_app/core/error/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/utils/form_state.freezed.dart';

@freezed
class FormBlocState<DataT> with _$FormBlocState<DataT> {
  const FormBlocState._();
  const factory FormBlocState.loading() = LoadingForm;

  const factory FormBlocState.loadFailed(
    Failure failure,
  ) = LoadFailedForm;

  const factory FormBlocState.loaded({
    required DataT data,
    Failure? failure,
    @Default(false) bool isSubmitting,
    @Default(false) bool submitted,
    required bool canBeSubmitted,
  }) = LoadedForm;

  Failure? get failure => map(
        loadFailed: (failed) => failed.failure,
        loaded: (loaded) => loaded.failure,
        loading: (_) => null,
      );

  bool get canBeSubmitted => map(
        loading: (_) => false,
        loadFailed: (_) => false,
        loaded: (loaded) => loaded.canBeSubmitted,
      );

  /// Returns the form state as a LoadedState.
  /// If form was not loaded, it will return null.
  LoadedForm<DataT>? get asLoaded => maybeMap(
        loaded: (value) => value,
        orElse: () => null,
      );

  /// Returns [data] when state is loaded.
  /// Otherwise returns null.
  DataT? get data => maybeMap(
        loaded: (value) => value.data,
        orElse: () => null,
      );

  bool get isSubmitted => maybeMap(
        loaded: (value) => value.submitted,
        orElse: () => false,
      );

  bool get isSubmitting => maybeMap(
        loaded: (value) => value.isSubmitting,
        orElse: () => false,
      );
}

extension LoadedFormStateX<DataT> on LoadedForm<DataT> {
  LoadedForm<DataT> copyWithData(DataT data, {bool? canBeSubmitted}) =>
      copyWith(
        isSubmitting: false,
        submitted: false,
        canBeSubmitted: canBeSubmitted ?? this.canBeSubmitted,
        data: data,
      );
  LoadedForm<DataT> copyWithNoFailure() => copyWith(
        failure: null,
      );
  LoadedForm<DataT> get toSubmitting => copyWith(
        isSubmitting: true,
        submitted: false,
        failure: null,
      );
  LoadedForm<DataT> toSubmissionFailed(Failure failure) => copyWith(
        isSubmitting: false,
        submitted: false,
        failure: failure,
      );
  LoadedForm<DataT> get toSubmitted => copyWith(
        isSubmitting: false,
        submitted: true,
        failure: null,
      );
}

extension LoadingFormStateX<DataT> on LoadingForm<DataT> {
  LoadedForm<DataT> toLoaded(
    DataT data, {
    bool canBeSubmitted = false,
  }) =>
      LoadedForm(
        data: data,
        canBeSubmitted: canBeSubmitted,
      );
}
