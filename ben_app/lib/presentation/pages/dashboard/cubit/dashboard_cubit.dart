import 'package:ben_app/core/extension/either.dart';
import 'package:ben_app/core/utils/form_state.dart';
import 'package:ben_app/core/utils/input_object.dart';
import 'package:ben_app/domain/entities/intersection.dart';
import 'package:ben_app/domain/entities/parcours.dart';
import 'package:ben_app/domain/entities/project.dart';
import 'package:ben_app/domain/entities/project_content.dart';
import 'package:ben_app/domain/entities/project_picture_metadata.dart';
import 'package:ben_app/domain/entities/project_settings.dart';
import 'package:ben_app/domain/entities/section.dart';
import 'package:ben_app/domain/entities/upload_file.dart';
import 'package:ben_app/domain/entities/upload_file_result.dart';
import 'package:ben_app/domain/usecase/project_usecase.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/pages/dashboard/cubit/dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<FormBlocState<DashboardState>> {
  DashboardCubit({required this.projectUsecase})
      : super(
          const FormBlocState.loading(),
        );

  final ProjectUsecase projectUsecase;

  Future<void> init() async {
    final projects = await projectUsecase.getProjects();
    if (projects.isLeft()) emit(FormBlocState.loadFailed(projects.getLeft()));

    emit(FormBlocState.loaded(
        data: DashboardState(
          projects: projects.getRight(),
          projectName: StringInput(),
          pictureSectionParams: MapIntInput(),
        ),
        canBeSubmitted: false));
  }

  void setFiles(List<PlatformFile> files) {
    emit(
      state.asLoaded!.copyWithData(
        state.asLoaded!.data.copyWith(files: files),
      ),
    );
  }

  Future<void> createProject() async {
    final lState = state.asLoaded;
    if (lState == null) return;
    final data = lState.data;
    final files = lState.data.files;
    if (files == null) return;

    final filesData = await _uploadFiles(
      projectName: data.projectName.value ?? 'test',
      files: files,
    );

    if (filesData.isEmpty) return;

    final parcours = _generateParcours(
      files: files,
      filesData: filesData,
    );
    final content = ProjectContent(name: 'test', parcours: parcours);
    //ProjectContent(name: data.projectName.value!, parcours: parcours);
    final settings = ProjectSettings(
      pictureSections: data.pictureSectionParams.value ??
          {
            'section': 2,
            'intersection': 4,
          },
    );

    await projectUsecase.createProject(
      CreateProjectCmd(content: content, settings: settings),
    );
  }

  Future<List<UploadFileResult>> _uploadFiles({
    required String projectName,
    required List<PlatformFile> files,
  }) async {
    emit(state.asLoaded!.toSubmitting);
    final filesToUpload = files
        .map(
          (e) => UploadFile(name: e.name, data: e.bytes!),
        )
        .toList();
    final uploadResults = await projectUsecase.uploadFiles(
      projectName: projectName,
      files: filesToUpload,
    );
    if (uploadResults.isLeft()) return [];
    return uploadResults.getRight();
  }

  List<Parcours> _generateParcours({
    required List<PlatformFile> files,
    required List<UploadFileResult> filesData,
  }) {
    final parcoursNames = <String>[];
    for (final file in files) {
      final meta = file.toProjectPictureMetadata;
      if (!parcoursNames.contains(meta.parcoursName)) {
        parcoursNames.add(meta.parcoursName);
      }
    }

    final parcours = <Parcours>[];
    for (final parcour in parcoursNames) {
      final matchingFiles = files
          .where(
            (element) =>
                element.toProjectPictureMetadata.parcoursName == parcour,
          )
          .toList();
      parcours.add(
        Parcours(
          name: parcour,
          sections: matchingFiles
              .where((element) => element.toProjectPictureMetadata.isSection)
              .map(
                (e) => Section(
                  name: e.toProjectPictureMetadata.sectionName,
                  picture: filesData
                      .firstWhere((element) => element.name == e.name)
                      .name,
                  index: e.toProjectPictureMetadata.sectionNumber,
                ),
              )
              .toList(),
          intersections: matchingFiles
              .where((element) => !element.toProjectPictureMetadata.isSection)
              .map(
                (e) => Intersection(
                  name: e.toProjectPictureMetadata.sectionName,
                  picture: filesData
                      .firstWhere((element) => element.name == e.name)
                      .name,
                  index: e.toProjectPictureMetadata.sectionNumber,
                ),
              )
              .toList(),
        ),
      );
    }
    return parcours;
  }
}
