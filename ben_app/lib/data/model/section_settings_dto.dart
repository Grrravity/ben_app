import 'package:ben_app/domain/entities/section_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/section_settings_dto.freezed.dart';
part 'generated/section_settings_dto.g.dart';

@freezed
class SectionSettingsDTO with _$SectionSettingsDTO {
  const factory SectionSettingsDTO({
    required String name,
    required int pictureCount,
  }) = _SectionSettingsDTO;

  factory SectionSettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$SectionSettingsDTOFromJson(json);
}

extension OnSectionSettings on SectionSettings {
  SectionSettingsDTO get toDto => SectionSettingsDTO(
        name: name,
        pictureCount: pictureCount,
      );
}

extension OnSectionSettingsDTOList on List<SectionSettings> {
  List<SectionSettingsDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnSectionSettingsDTO on SectionSettingsDTO {
  SectionSettings get toEntity => SectionSettings(
        name: name,
        pictureCount: pictureCount,
      );
}

extension OnSectionSettingsList on List<SectionSettingsDTO> {
  List<SectionSettings> get toEntity => map((dto) => dto.toEntity).toList();
}
