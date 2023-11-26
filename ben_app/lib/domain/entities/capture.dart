import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/capture.freezed.dart';

@freezed
class Captures with _$Captures {
  const factory Captures({
    required String path,
    String? description,
  }) = _Captures;
}
