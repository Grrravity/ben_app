import 'package:ben_app/domain/entities/project/parcours.dart';
import 'package:ben_app/domain/entities/project/project_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/project/project.freezed.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String id,
    required String name,
    required List<DocumentReference<Map<String, dynamic>>> parcoursReferences,
    required ProjectSettings settings,
    required int totalSections,
    required int doneSections,
    required int totalIntersections,
    required int doneIntersections,
  }) = _Project;
}

@freezed
class CreateProjectCmd with _$CreateProjectCmd {
  const factory CreateProjectCmd({
    required String name,
    required List<CreateParcoursCmd> parcours,
    required ProjectSettings settings,
  }) = _CreateProjectCmd;
}
