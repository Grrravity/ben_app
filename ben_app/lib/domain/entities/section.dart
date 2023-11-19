import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/section.freezed.dart';

@freezed
class Section with _$Section {
  const factory Section({
    required String name,
    required String picture,
    int? index,
  }) = _Section;
}
