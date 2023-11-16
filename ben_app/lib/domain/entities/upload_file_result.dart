import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/upload_file_result.freezed.dart';

@freezed
class UploadFileResult with _$UploadFileResult {
  const factory UploadFileResult({
    required String name,
    required String url,
  }) = _UploadFileResult;
}
