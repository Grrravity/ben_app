part of 'project_create_cubit.dart';

@freezed
class ProjectCreateState with _$ProjectCreateState {
  const factory ProjectCreateState({
    required StringInput projectName,
    required MapIntInput sectionPictureSetting,
    required MapIntInput intersectionPictureSetting,
    List<PlatformFile>? files,
  }) = _ProjectCreateState;

  const ProjectCreateState._();

  bool get canBeSubmitted =>
      projectName.failure == null &&
      sectionPictureSetting.failure == null &&
      intersectionPictureSetting.failure == null;
}
