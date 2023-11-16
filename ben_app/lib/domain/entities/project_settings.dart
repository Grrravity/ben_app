import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/project_settings.freezed.dart';

@freezed
class ProjectSettings with _$ProjectSettings {
  const factory ProjectSettings({
    required Map<String, int> pictureSections,
  }) = _ProjectSettings;
}
