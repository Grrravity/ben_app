// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../project_picture_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectPictureMetadata {
  String get parcoursName => throw _privateConstructorUsedError;
  String get sectionName => throw _privateConstructorUsedError;
  bool get isSection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectPictureMetadataCopyWith<ProjectPictureMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectPictureMetadataCopyWith<$Res> {
  factory $ProjectPictureMetadataCopyWith(ProjectPictureMetadata value,
          $Res Function(ProjectPictureMetadata) then) =
      _$ProjectPictureMetadataCopyWithImpl<$Res, ProjectPictureMetadata>;
  @useResult
  $Res call({String parcoursName, String sectionName, bool isSection});
}

/// @nodoc
class _$ProjectPictureMetadataCopyWithImpl<$Res,
        $Val extends ProjectPictureMetadata>
    implements $ProjectPictureMetadataCopyWith<$Res> {
  _$ProjectPictureMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parcoursName = null,
    Object? sectionName = null,
    Object? isSection = null,
  }) {
    return _then(_value.copyWith(
      parcoursName: null == parcoursName
          ? _value.parcoursName
          : parcoursName // ignore: cast_nullable_to_non_nullable
              as String,
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
      isSection: null == isSection
          ? _value.isSection
          : isSection // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectPictureMetadataImplCopyWith<$Res>
    implements $ProjectPictureMetadataCopyWith<$Res> {
  factory _$$ProjectPictureMetadataImplCopyWith(
          _$ProjectPictureMetadataImpl value,
          $Res Function(_$ProjectPictureMetadataImpl) then) =
      __$$ProjectPictureMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String parcoursName, String sectionName, bool isSection});
}

/// @nodoc
class __$$ProjectPictureMetadataImplCopyWithImpl<$Res>
    extends _$ProjectPictureMetadataCopyWithImpl<$Res,
        _$ProjectPictureMetadataImpl>
    implements _$$ProjectPictureMetadataImplCopyWith<$Res> {
  __$$ProjectPictureMetadataImplCopyWithImpl(
      _$ProjectPictureMetadataImpl _value,
      $Res Function(_$ProjectPictureMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parcoursName = null,
    Object? sectionName = null,
    Object? isSection = null,
  }) {
    return _then(_$ProjectPictureMetadataImpl(
      parcoursName: null == parcoursName
          ? _value.parcoursName
          : parcoursName // ignore: cast_nullable_to_non_nullable
              as String,
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
      isSection: null == isSection
          ? _value.isSection
          : isSection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProjectPictureMetadataImpl implements _ProjectPictureMetadata {
  const _$ProjectPictureMetadataImpl(
      {required this.parcoursName,
      required this.sectionName,
      required this.isSection});

  @override
  final String parcoursName;
  @override
  final String sectionName;
  @override
  final bool isSection;

  @override
  String toString() {
    return 'ProjectPictureMetadata(parcoursName: $parcoursName, sectionName: $sectionName, isSection: $isSection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectPictureMetadataImpl &&
            (identical(other.parcoursName, parcoursName) ||
                other.parcoursName == parcoursName) &&
            (identical(other.sectionName, sectionName) ||
                other.sectionName == sectionName) &&
            (identical(other.isSection, isSection) ||
                other.isSection == isSection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, parcoursName, sectionName, isSection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectPictureMetadataImplCopyWith<_$ProjectPictureMetadataImpl>
      get copyWith => __$$ProjectPictureMetadataImplCopyWithImpl<
          _$ProjectPictureMetadataImpl>(this, _$identity);
}

abstract class _ProjectPictureMetadata implements ProjectPictureMetadata {
  const factory _ProjectPictureMetadata(
      {required final String parcoursName,
      required final String sectionName,
      required final bool isSection}) = _$ProjectPictureMetadataImpl;

  @override
  String get parcoursName;
  @override
  String get sectionName;
  @override
  bool get isSection;
  @override
  @JsonKey(ignore: true)
  _$$ProjectPictureMetadataImplCopyWith<_$ProjectPictureMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
