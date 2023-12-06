part of 'project_detail_cubit.dart';

@freezed
class ProjectDetailState with _$ProjectDetailState {
  const factory ProjectDetailState({
    required Project project,
    required List<Parcours> parcours,
  }) = _ProjectDetailState;

  const ProjectDetailState._();
}
