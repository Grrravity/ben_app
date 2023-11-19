import 'dart:io';

import 'package:ben_app/domain/entities/section.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart';

part 'generated/section_dto.freezed.dart';
part 'generated/section_dto.g.dart';

@freezed
class SectionDTO with _$SectionDTO {
  const factory SectionDTO({
    required String name,
    required String picture,
    int? index,
  }) = _SectionDTO;

  factory SectionDTO.fromJson(Map<String, dynamic> json) =>
      _$SectionDTOFromJson(json);
}

extension OnSection on Section {
  SectionDTO get toDto => SectionDTO(
        name: name,
        picture: picture,
        index: index,
      );
}

extension OnSectionList on List<Section> {
  List<SectionDTO> get toDto => map((entity) => entity.toDto).toList();
}

extension OnSectionDTO on SectionDTO {
  Section get toEntity => Section(
        name: name,
        picture: picture,
        index: index,
      );
}

extension OnSectionDTOList on List<SectionDTO> {
  List<Section> get toEntity => map((dto) => dto.toEntity).toList();
}

extension OnFileSystemeEntitySection on FileSystemEntity {
  SectionDTO get toSectionDto => SectionDTO(
        name: basename(path),
        picture: path,
      );
}

extension OnFileSystemeEntitySectionList on List<FileSystemEntity> {
  List<SectionDTO> get toSectionDto =>
      map((fileSystemeEntity) => fileSystemeEntity.toSectionDto).toList();
}
