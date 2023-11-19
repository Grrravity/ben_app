import 'dart:io';

import 'package:ben_app/domain/entities/intersection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart';

part 'generated/intersection_dto.freezed.dart';
part 'generated/intersection_dto.g.dart';

@freezed
class IntersectionDTO with _$IntersectionDTO {
  const factory IntersectionDTO({
    required String name,
    required String picture,
    int? index,
  }) = _IntersectionDTO;

  factory IntersectionDTO.fromJson(Map<String, dynamic> json) =>
      _$IntersectionDTOFromJson(json);
}

extension OnIntersection on Intersection {
  IntersectionDTO get toDto => IntersectionDTO(
        name: name,
        picture: picture,
        index: index,
      );
}

extension OnIntersectionList on List<Intersection> {
  List<IntersectionDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnIntersectionDTO on IntersectionDTO {
  Intersection get toEntity => Intersection(
        name: name,
        picture: picture,
        index: index,
      );
}

extension OnIntersectionDTOList on List<IntersectionDTO> {
  List<Intersection> get toEntity => map((dto) => dto.toEntity).toList();
}

extension OnFileSystemeEntityIntersection on FileSystemEntity {
  IntersectionDTO get toIntersectionDto => IntersectionDTO(
        name: basename(path),
        picture: path,
      );
}

extension OnFileSystemeEntityIntersectionList on List<FileSystemEntity> {
  List<IntersectionDTO> get toIntersectionDto =>
      map((fileSystemeEntity) => fileSystemeEntity.toIntersectionDto).toList();
}
