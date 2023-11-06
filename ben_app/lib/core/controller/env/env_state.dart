part of 'env_cubit.dart';

@freezed
class EnvState with _$EnvState {
  const EnvState._();
  const factory EnvState.loading() = _LoadingState;
  const factory EnvState.loaded({required EnvType env}) = _LoadedState;

  factory EnvState.fromJson(Map<String, dynamic> json) =>
      _$EnvStateFromJson(json);
}
