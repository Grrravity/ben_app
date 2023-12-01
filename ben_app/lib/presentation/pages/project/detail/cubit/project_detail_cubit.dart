import 'package:ben_app/core/extension/either.dart';
import 'package:ben_app/core/utils/form_state.dart';
import 'package:ben_app/domain/entities/project/parcours.dart';
import 'package:ben_app/domain/entities/project/project.dart';
import 'package:ben_app/domain/usecase/parcours_usecase.dart';
import 'package:ben_app/domain/usecase/project_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/pages/project/detail/cubit/project_detail_cubit.freezed.dart';
part 'project_detail_state.dart';

class ProjectDetailCubit extends Cubit<FormBlocState<ProjectDetailState>> {
  ProjectDetailCubit({
    required this.projectUsecase,
    required this.parcoursUsecase,
  }) : super(
          const FormBlocState.loading(),
        );

  final ProjectUsecase projectUsecase;
  final ParcoursUsecase parcoursUsecase;

  Future<void> init(String projectId) async {
    final projectOrFailure = await projectUsecase.getProject(projectId);
    if (projectOrFailure.isLeft()) {
      emit(FormBlocState.loadFailed(projectOrFailure.getLeft()));
    }
    final project = projectOrFailure.getRight();

    final parcoursOrFailure =
        await parcoursUsecase.getParcours(project.parcoursReferences);
    if (parcoursOrFailure.isLeft()) {
      emit(FormBlocState.loadFailed(projectOrFailure.getLeft()));
    }
    final parcours = parcoursOrFailure.getRight();

    emit(
      FormBlocState.loaded(
        data: ProjectDetailState(
          project: project,
          parcours: parcours,
        ),
        canBeSubmitted: false,
      ),
    );
  }
}
