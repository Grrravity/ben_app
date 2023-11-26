import 'dart:typed_data';

import 'package:ben_app/domain/entities/upload_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/upload_file_dto.freezed.dart';

@freezed
class UploadFileDTO with _$UploadFileDTO {
  const factory UploadFileDTO({
    required String name,
    required Uint8List data,
  }) = _UploadFileDTO;
}

extension OnUploadFile on UploadFile {
  UploadFileDTO get toDto => UploadFileDTO(
        name: name,
        data: data,
      );
}

extension OnUploadFileList on List<UploadFile> {
  List<UploadFileDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnUploadFileDTO on UploadFileDTO {
  UploadFile get toEntity => UploadFile(
        name: name,
        data: data,
      );
}

extension OnUploadFileDTOList on List<UploadFileDTO> {
  List<UploadFile> get toEntity => map((dto) => dto.toEntity).toList();
}
