import 'package:ben_app/domain/entities/project/pictures_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/project/pictures_settings_dto.freezed.dart';
part '../generated/project/pictures_settings_dto.g.dart';

@freezed
class PicturesSettingsDTO with _$PicturesSettingsDTO {
  const factory PicturesSettingsDTO({
    required String name,
    required int pictureCount,
  }) = _PicturesSettingsDTO;

  factory PicturesSettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$PicturesSettingsDTOFromJson(json);
}

extension OnPicturesSettings on PicturesSettings {
  PicturesSettingsDTO get toDto => PicturesSettingsDTO(
        name: name,
        pictureCount: pictureCount,
      );
}

extension PicturesSettingsList on List<PicturesSettings> {
  List<PicturesSettingsDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnPicturesSettingsDTO on PicturesSettingsDTO {
  PicturesSettings get toEntity => PicturesSettings(
        name: name,
        pictureCount: pictureCount,
      );
}

extension OnPicturesSettingsDTOList on List<PicturesSettingsDTO> {
  List<PicturesSettings> get toEntity => map((dto) => dto.toEntity).toList();
}
