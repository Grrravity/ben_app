import 'package:ben_app/domain/entities/capture.dart';
import 'package:ben_app/domain/entities/project/caracteristics/bikable_caracteristics.dart';
import 'package:ben_app/domain/entities/project/caracteristics/global_intersection_caracteristics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/project/intersection/intersection.freezed.dart';

@freezed
class Intersection with _$Intersection {
  const factory Intersection({
    required int index,
    required String name,
    required List<String> ways,
    required List<String> municipalities,
    required String illustration,
    required GlobalIntersectionCaracteristics globalCaracteristics,
    required BikabledCaracteristics bikableCaracteristics,
    required List<IntersectionContent> content,
    String? comment,
  }) = _Intersection;
}

@freezed
class IntersectionContent with _$IntersectionContent {
  const factory IntersectionContent({
    required String sectionName,
    required int pictureQuantity,
    required List<Captures> pictures,
  }) = _IntersectionContent;
}
