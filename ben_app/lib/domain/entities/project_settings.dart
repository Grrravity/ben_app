import 'package:ben_app/domain/entities/section_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/project_settings.freezed.dart';

@freezed
class ProjectSettings with _$ProjectSettings {
  const factory ProjectSettings({
    required SectionSettings sectionPictureSetting,
    required SectionSettings intersectionPictureSetting,
  }) = _ProjectSettings;
}
