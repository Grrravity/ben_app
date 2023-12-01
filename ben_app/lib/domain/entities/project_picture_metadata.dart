import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/project_picture_metadata.freezed.dart';

@freezed
class ProjectPictureMetadata with _$ProjectPictureMetadata {
  const factory ProjectPictureMetadata({
    required String parcoursName,
    required String sectionName,
    required bool isSection,
    required int sectionNumber,
  }) = _ProjectPictureMetadata;
}

extension OnPlatformFile on PlatformFile {
  ProjectPictureMetadata get toProjectPictureMetadata {
    final baseName = name.split('.').first;
    return ProjectPictureMetadata(
      parcoursName: baseName.split('_')[0],
      sectionName: baseName.split('_')[2],
      isSection: baseName.split('_')[1].startsWith('s'),
      sectionNumber: int.tryParse(baseName.split('_')[1].substring(1)) ?? 0,
    );
  }
}
