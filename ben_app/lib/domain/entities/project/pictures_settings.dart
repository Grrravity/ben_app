import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/project/pictures_settings.freezed.dart';

@freezed
class PicturesSettings with _$PicturesSettings {
  const factory PicturesSettings({
    required String name,
    required int pictureCount,
  }) = _PicturesSettings;
}
