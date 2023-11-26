import 'package:ben_app/domain/entities/project/intersection/intersection.dart';
import 'package:ben_app/domain/entities/project/section/section.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/project/parcours.freezed.dart';

@freezed
class Parcours with _$Parcours {
  const factory Parcours({
    required String name,
    required List<String> ways,
    required List<String> municipalities,
    required List<Section> sections,
    required List<Intersection> intersections,
  }) = _Parcours;
}
