import 'package:ben_app/domain/entities/capture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/capture_dto.freezed.dart';
part 'generated/capture_dto.g.dart';

@freezed
class CapturesDTO with _$CapturesDTO {
  const factory CapturesDTO({
    required String path,
    String? description,
  }) = _CapturesDTO;

  factory CapturesDTO.fromJson(Map<String, dynamic> json) =>
      _$CapturesDTOFromJson(json);
}

extension OnCaptures on Captures {
  CapturesDTO get toDto => CapturesDTO(
        path: path,
        description: description,
      );
}

extension OnCapturesList on List<Captures> {
  List<CapturesDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnCapturesDTO on CapturesDTO {
  Captures get toEntity => Captures(
        path: path,
        description: description,
      );
}

extension OnCapturesDTOList on List<CapturesDTO> {
  List<Captures> get toEntity => map((dto) => dto.toEntity).toList();
}
