import 'package:ben_app/core/extension/either.dart';
import 'package:ben_app/core/utils/async_value.dart';
import 'package:ben_app/domain/entities/project/parcours.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:ben_app/domain/usecase/parcours_usecase.dart';
import 'package:ben_app/domain/usecase/project_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/pages/project/detail/cubit/project_detail_cubit.freezed.dart';
part 'project_detail_state.dart';

class ProjectDetailCubit extends Cubit<AsyncValue<ProjectDetailState, void>> {
  ProjectDetailCubit({
    required this.projectUsecase,
    required this.parcoursUsecase,
  }) : super(
          const AsyncValue.loading(),
        );

  final ProjectUsecase projectUsecase;
  final ParcoursUsecase parcoursUsecase;

  Future<void> init(String projectId) async {
    final projectOrFailure = await projectUsecase.getProject(projectId);

    if (projectOrFailure.isLeft()) {
      emit(AsyncValue.failure(failure: projectOrFailure.getLeft()));
    }

    final project = projectOrFailure.getRight();

    final parcoursOrFailure =
        await parcoursUsecase.getProjects(project.parcoursReferences);

    if (parcoursOrFailure.isLeft()) {
      emit(AsyncValue.failure(failure: parcoursOrFailure.getLeft()));
    }

    final parcours = parcoursOrFailure.getRight();

    emit(
      AsyncValue.loaded(
        data: ProjectDetailState(
          project: project,
          parcours: parcours,
        ),
      ),
    );
  }
}
