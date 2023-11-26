part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required List<Project> projects,
  }) = _DashboardState;

  const DashboardState._();
}
