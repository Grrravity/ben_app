import 'package:ben_app/core/error/input_failure.dart';
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
import 'package:ben_app/domain/entities/section_settings.dart';
import 'package:ben_app/domain/entities/upload_file.dart';
import 'package:ben_app/domain/entities/upload_file_result.dart';
import 'package:ben_app/domain/usecase/project_usecase.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/pages/project/create/cubit/project_create_cubit.freezed.dart';
part 'project_create_state.dart';

class ProjectCreateCubit extends Cubit<FormBlocState<ProjectCreateState>> {
  ProjectCreateCubit({required this.projectUsecase})
      : super(
          FormBlocState.loaded(
            data: ProjectCreateState(
              projectName: StringInput(),
              sectionPictureSetting: MapIntInput(value: {'Photos': 2}),
              intersectionPictureSetting: MapIntInput(value: {'Photos': 4}),
            ),
            canBeSubmitted: false,
          ),
        );

  final ProjectUsecase projectUsecase;

  void setProjectName(String? value) {
    if (value == null) return;
    emit(
      state.asLoaded!.copyWithData(
        state.asLoaded!.data.copyWith(projectName: StringInput(value: value)),
      ),
    );
    if (state.asLoaded!.data.canBeSubmitted) {
      emit(state.asLoaded!.copyWith(canBeSubmitted: true));
    }
  }

  void removeSectionPictureSetting(String key) {
    final currentMap = {
      ...(state.asLoaded!.data.sectionPictureSetting.value ?? {'Photos': 2}),
    }..removeWhere(
        (mapKey, _) => mapKey == key,
      );
    emit(
      state.asLoaded!.copyWithData(
        state.asLoaded!.data.copyWith(
          sectionPictureSetting: MapIntInput(
            value: {
              ...currentMap,
            },
          ),
        ),
      ),
    );
    if (state.asLoaded!.data.canBeSubmitted) {
      emit(state.asLoaded!.copyWith(canBeSubmitted: true));
    }
  }

  void addSectionPictureSetting() {
    final currentMap =
        state.asLoaded!.data.sectionPictureSetting.value ?? {'Photos': 2};
    emit(
      state.asLoaded!.copyWithData(
        state.asLoaded!.data.copyWith(
          sectionPictureSetting: MapIntInput(
            value: {
              ...currentMap,
              ...{'': 0},
            },
          ),
        ),
      ),
    );
    if (state.asLoaded!.data.canBeSubmitted) {
      emit(state.asLoaded!.copyWith(canBeSubmitted: true));
    }
  }

  InputFailure? setSectionPictureSettingFromIndex(
    MapEntry<String, int> input,
    String oldKey,
    bool isEditingValue,
  ) {
    final currentMap = state.asLoaded!.data.sectionPictureSetting.value!;

    if (!isEditingValue &&
        currentMap.keys.any((element) => element == input.key)) {
      return InputFailure.other;
    }

    final newMap = <String, int>{};
    for (final entry in currentMap.entries) {
      if (entry.key != oldKey) {
        newMap.addEntries([entry]);
      } else {
        newMap.addEntries([input]);
      }
    }

    emit(
      state.asLoaded!.copyWithData(
        state.asLoaded!.data.copyWith(
          sectionPictureSetting: MapIntInput(value: newMap),
        ),
      ),
    );
    if (state.asLoaded!.data.canBeSubmitted) {
      emit(state.asLoaded!.copyWith(canBeSubmitted: true));
    }
    return null;
  }

  void setSectionPictureSetting(MapIntInput input) {
    emit(
      state.asLoaded!.copyWithData(
        state.asLoaded!.data.copyWith(
          intersectionPictureSetting:
              input.value == null ? MapIntInput(value: {'Photos': 2}) : input,
        ),
      ),
    );
    if (state.asLoaded!.data.canBeSubmitted) {
      emit(state.asLoaded!.copyWith(canBeSubmitted: true));
    }
  }

  void removeIntersectionPictureSetting(String key) {
    final currentMap = {
      ...(state.asLoaded!.data.intersectionPictureSetting.value ??
          {'Photos': 4}),
    }..removeWhere(
        (mapKey, _) => mapKey == key,
      );
    emit(
      state.asLoaded!.copyWithData(
        state.asLoaded!.data.copyWith(
          intersectionPictureSetting: MapIntInput(
            value: {
              ...currentMap,
            },
          ),
        ),
      ),
    );
    if (state.asLoaded!.data.canBeSubmitted) {
      emit(state.asLoaded!.copyWith(canBeSubmitted: true));
    }
  }

  void addIntersectionPictureSetting() {
    final currentMap =
        state.asLoaded!.data.intersectionPictureSetting.value ?? {'Photos': 2};
    emit(
      state.asLoaded!.copyWithData(
        state.asLoaded!.data.copyWith(
          intersectionPictureSetting: MapIntInput(
            value: {
              ...currentMap,
              ...{'': 0},
            },
          ),
        ),
      ),
    );
    if (state.asLoaded!.data.canBeSubmitted) {
      emit(state.asLoaded!.copyWith(canBeSubmitted: true));
    }
  }

  InputFailure? setIntersectionPictureSettingFromIndex(
    MapEntry<String, int> input,
    String oldKey,
    bool isEditingValue,
  ) {
    final currentMap = state.asLoaded!.data.intersectionPictureSetting.value!;

    if (!isEditingValue &&
        currentMap.keys.any((element) => element == input.key)) {
      return InputFailure.other;
    }

    final newMap = <String, int>{};
    for (final entry in currentMap.entries) {
      if (entry.key != oldKey) {
        newMap.addEntries([entry]);
      } else {
        newMap.addEntries([input]);
      }
    }

    emit(
      state.asLoaded!.copyWithData(
        state.asLoaded!.data.copyWith(
          intersectionPictureSetting: MapIntInput(value: newMap),
        ),
      ),
    );
    if (state.asLoaded!.data.canBeSubmitted) {
      emit(state.asLoaded!.copyWith(canBeSubmitted: true));
    }
    return null;
  }

  void setIntersectionPictureSetting(MapIntInput input) {
    if (input.value == null) return;
    emit(
      state.asLoaded!.copyWithData(
        state.asLoaded!.data.copyWith(
          intersectionPictureSetting:
              input.value == null ? MapIntInput(value: {'Photos': 4}) : input,
        ),
      ),
    );
    if (state.asLoaded!.data.canBeSubmitted) {
      emit(state.asLoaded!.copyWith(canBeSubmitted: true));
    }
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
    final content = ProjectContent(
      name: data.projectName.value ?? 'test',
      parcours: parcours,
    );
    final settings = ProjectSettings(
      sectionPictureSetting: SectionSettings(
        name: data.intersectionPictureSetting.value?.keys.first ?? '',
        pictureCount: data.intersectionPictureSetting.value?.values.first ?? 2,
      ),
      intersectionPictureSetting: SectionSettings(
        name: data.intersectionPictureSetting.value?.keys.first ?? '',
        pictureCount: data.intersectionPictureSetting.value?.values.first ?? 4,
      ),
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
