import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/intersection.freezed.dart';

@freezed
class Intersection with _$Intersection {
  const factory Intersection({
    required String name,
    required String picture,
    int? index,
  }) = _Intersection;
}
