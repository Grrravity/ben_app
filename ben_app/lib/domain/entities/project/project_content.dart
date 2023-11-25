import 'package:ben_app/domain/entities/project/parcours.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/project/project_content.freezed.dart';

@freezed
class ProjectContent with _$ProjectContent {
  const factory ProjectContent({
    required String name,
    required List<Parcours> parcours,
  }) = _ProjectContent;
}
