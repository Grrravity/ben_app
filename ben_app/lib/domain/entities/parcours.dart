import 'package:ben_app/domain/entities/intersection.dart';
import 'package:ben_app/domain/entities/section.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/parcours.freezed.dart';

@freezed
class Parcours with _$Parcours {
  const factory Parcours({
    required String name,
    required List<Section> sections,
    required List<Intersection> intersections,
  }) = _Parcours;
}
