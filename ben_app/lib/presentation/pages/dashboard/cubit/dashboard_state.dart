part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required List<Project> projects,
    required StringInput projectName,
    required MapIntInput pictureSectionParams,
  }) = _DashboardState;

  const DashboardState._();
}
