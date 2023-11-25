import 'package:ben_app/domain/entities/project/pictures_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/project/project_settings.freezed.dart';

@freezed
class ProjectSettings with _$ProjectSettings {
  const factory ProjectSettings({
    required List<PicturesSettings> sectionPictureSetting,
    required List<PicturesSettings> intersectionPictureSetting,
  }) = _ProjectSettings;
}
