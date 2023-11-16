import 'package:ben_app/domain/entities/upload_file_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/upload_file_result_dto.freezed.dart';

@freezed
class UploadFileResultDTO with _$UploadFileResultDTO {
  const factory UploadFileResultDTO({
    required String name,
    required String url,
  }) = _UploadFileResultDTO;
}

extension OnUploadFileResult on UploadFileResult {
  UploadFileResultDTO get toDto => UploadFileResultDTO(
        name: name,
        url: url,
      );
}

extension OnUploadFileResultList on List<UploadFileResult> {
  List<UploadFileResultDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnUploadFileResultDTO on UploadFileResultDTO {
  UploadFileResult get toEntity => UploadFileResult(
        name: name,
        url: url,
      );
}

extension OnUploadFileResultDTOList on List<UploadFileResultDTO> {
  List<UploadFileResult> get toEntity => map((dto) => dto.toEntity).toList();
}
