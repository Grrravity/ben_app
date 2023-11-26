import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/upload_file.freezed.dart';

@freezed
class UploadFile with _$UploadFile {
  const factory UploadFile({
    required String name,
    required Uint8List data,
  }) = _UploadFile;
}
