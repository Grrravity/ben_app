import 'package:ben_app/core/extension/either.dart';
import 'package:ben_app/core/utils/async_value.dart';
import 'package:ben_app/domain/entities/project.dart';
import 'package:ben_app/domain/usecase/project_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/pages/dashboard/cubit/dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<AsyncValue<DashboardState, void>> {
  DashboardCubit({required this.projectUsecase})
      : super(
          const AsyncValue.loading(),
        );

  final ProjectUsecase projectUsecase;

  Future<void> init() async {
    final projects = await projectUsecase.getProjects();
    if (projects.isLeft()) {
      emit(AsyncValue.failure(failure: projects.getLeft()));
    }

    emit(
      AsyncValue.loaded(
        data: DashboardState(
          projects: projects.getRight(),
        ),
      ),
    );
  }
}
