import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/section_settings.freezed.dart';

@freezed
class SectionSettings with _$SectionSettings {
  const factory SectionSettings({
    required String name,
    required int pictureCount,
  }) = _SectionSettings;
}
