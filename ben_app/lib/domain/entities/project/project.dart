import 'package:ben_app/domain/entities/project/parcours.dart';
import 'package:ben_app/domain/entities/project/project_content.dart';
import 'package:ben_app/domain/entities/project/project_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/project/project.freezed.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String id,
    required String name,
    required List<Parcours> parcours,
    required ProjectSettings settings,
  }) = _Project;
}

@freezed
class CreateProjectCmd with _$CreateProjectCmd {
  const factory CreateProjectCmd({
    required String name,
    required List<Parcours> parcours,
    required ProjectSettings settings,
  }) = _CreateProjectCmd;
}
