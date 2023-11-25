import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/project/caracteristics/global_intersection_caracteristics.freezed.dart';

@freezed
class GlobalIntersectionCaracteristics with _$GlobalIntersectionCaracteristics {
  const factory GlobalIntersectionCaracteristics({
    IntersectionType? intersectionType,
    required IntersectionManagement intersectionManagement,
    required BikeManagement bikeManagement,
    required IntersectionWaythrough intersectionWaythrough,
  }) = _GlobalIntersectionCaracteristics;

  factory GlobalIntersectionCaracteristics.asEmpty() =>
      GlobalIntersectionCaracteristics(
        intersectionManagement: IntersectionManagement.asEmpty(),
        bikeManagement: BikeManagement.asEmpty(),
        intersectionWaythrough: IntersectionWaythrough.asEmpty(),
      );
}

@JsonEnum()
enum IntersectionType {
  @JsonValue('t')
  t,
  @JsonValue('x')
  x,
  @JsonValue('roundabout')
  roundabout,
  @JsonValue('complex')
  complex,
}

@freezed
class IntersectionManagement with _$IntersectionManagement {
  const factory IntersectionManagement({
    required bool giveWay,
    required bool stop,
    required bool trafficLights,
    required bool rightPriority,
  }) = _IntersectionManagement;

  factory IntersectionManagement.asEmpty() => const IntersectionManagement(
        giveWay: false,
        stop: false,
        trafficLights: false,
        rightPriority: false,
      );
}

@freezed
class BikeManagement with _$BikeManagement {
  const factory BikeManagement({
    required bool bikeSpace,
    required bool bikeGiveway,
    required bool other,
    String? comment,
  }) = _BikeManagement;

  factory BikeManagement.asEmpty() => const BikeManagement(
        bikeSpace: false,
        bikeGiveway: false,
        other: false,
      );
}

@freezed
class IntersectionWaythrough with _$IntersectionWaythrough {
  const factory IntersectionWaythrough({
    required bool specificWaythrough,
    required bool walkwayWaythrough,
    required bool none,
    required bool other,
    String? comment,
  }) = _IntersectionWaythrough;

  factory IntersectionWaythrough.asEmpty() => const IntersectionWaythrough(
        specificWaythrough: false,
        walkwayWaythrough: false,
        none: false,
        other: false,
      );
}
