import 'package:ben_app/domain/entities/project_content.dart';
import 'package:ben_app/domain/entities/project_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/project.freezed.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String id,
    required ProjectContent content,
    required ProjectSettings settings,
  }) = _Project;
}

@freezed
class CreateProjectCmd with _$CreateProjectCmd {
  const factory CreateProjectCmd({
    required ProjectContent content,
    required ProjectSettings settings,
  }) = _CreateProjectCmd;
}
