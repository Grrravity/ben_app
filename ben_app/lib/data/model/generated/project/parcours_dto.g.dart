// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../project/parcours_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParcoursDTOImpl _$$ParcoursDTOImplFromJson(Map<String, dynamic> json) =>
    _$ParcoursDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      ways: (json['ways'] as List<dynamic>).map((e) => e as String).toList(),
      municipalities: (json['municipalities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sections: (json['sections'] as List<dynamic>)
          .map((e) => SectionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      intersections: (json['intersections'] as List<dynamic>)
          .map((e) => IntersectionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ParcoursDTOImplToJson(_$ParcoursDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ways': instance.ways,
      'municipalities': instance.municipalities,
      'sections': instance.sections.map((e) => e.toJson()).toList(),
      'intersections': instance.intersections.map((e) => e.toJson()).toList(),
    };

_$CreateParcoursCmdDTOImpl _$$CreateParcoursCmdDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateParcoursCmdDTOImpl(
      name: json['name'] as String,
      ways: (json['ways'] as List<dynamic>).map((e) => e as String).toList(),
      municipalities: (json['municipalities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sections: (json['sections'] as List<dynamic>)
          .map((e) => SectionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      intersections: (json['intersections'] as List<dynamic>)
          .map((e) => IntersectionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateParcoursCmdDTOImplToJson(
        _$CreateParcoursCmdDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ways': instance.ways,
      'municipalities': instance.municipalities,
      'sections': instance.sections.map((e) => e.toJson()).toList(),
      'intersections': instance.intersections.map((e) => e.toJson()).toList(),
    };
