import 'package:ben_app/domain/entities/capture.dart';
import 'package:ben_app/domain/entities/project/caracteristics/bikable_caracteristics.dart';
import 'package:ben_app/domain/entities/project/caracteristics/global_section_caracteristics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/project/section/section.freezed.dart';

@freezed
class Section with _$Section {
  const factory Section({
    required int index,
    required String name,
    required List<String> ways,
    required List<String> municipalities,
    required String illustration,
    required GlobalSectionCaracteristics globalCaracteristics,
    required BikabledCaracteristics bikableCaracteristics,
    required List<SectionContent> content,
    String? comment,
  }) = _Section;
}

@freezed
class SectionContent with _$SectionContent {
  const factory SectionContent({
    required String sectionName,
    required int pictureQuantity,
    required List<Captures> pictures,
  }) = _SectionContent;
}
