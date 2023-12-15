// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../project/section/section_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionDTO _$SectionDTOFromJson(Map<String, dynamic> json) {
  return _SectionDTO.fromJson(json);
}

/// @nodoc
mixin _$SectionDTO {
  int get index => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get ways => throw _privateConstructorUsedError;
  List<String> get municipalities => throw _privateConstructorUsedError;
  String get illustration => throw _privateConstructorUsedError;
  GlobalSectionCaracteristicsDTO get globalCaracteristics =>
      throw _privateConstructorUsedError;
  BikabledCaracteristicsDTO get bikableCaracteristics =>
      throw _privateConstructorUsedError;
  List<SectionContentDTO> get content => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionDTOCopyWith<SectionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionDTOCopyWith<$Res> {
  factory $SectionDTOCopyWith(
          SectionDTO value, $Res Function(SectionDTO) then) =
      _$SectionDTOCopyWithImpl<$Res, SectionDTO>;
  @useResult
  $Res call(
      {int index,
      String name,
      List<String> ways,
      List<String> municipalities,
      String illustration,
      GlobalSectionCaracteristicsDTO globalCaracteristics,
      BikabledCaracteristicsDTO bikableCaracteristics,
      List<SectionContentDTO> content,
      String? comment});

  $GlobalSectionCaracteristicsDTOCopyWith<$Res> get globalCaracteristics;
  $BikabledCaracteristicsDTOCopyWith<$Res> get bikableCaracteristics;
}

/// @nodoc
class _$SectionDTOCopyWithImpl<$Res, $Val extends SectionDTO>
    implements $SectionDTOCopyWith<$Res> {
  _$SectionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? name = null,
    Object? ways = null,
    Object? municipalities = null,
    Object? illustration = null,
    Object? globalCaracteristics = null,
    Object? bikableCaracteristics = null,
    Object? content = null,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ways: null == ways
          ? _value.ways
          : ways // ignore: cast_nullable_to_non_nullable
              as List<String>,
      municipalities: null == municipalities
          ? _value.municipalities
          : municipalities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      illustration: null == illustration
          ? _value.illustration
          : illustration // ignore: cast_nullable_to_non_nullable
              as String,
      globalCaracteristics: null == globalCaracteristics
          ? _value.globalCaracteristics
          : globalCaracteristics // ignore: cast_nullable_to_non_nullable
              as GlobalSectionCaracteristicsDTO,
      bikableCaracteristics: null == bikableCaracteristics
          ? _value.bikableCaracteristics
          : bikableCaracteristics // ignore: cast_nullable_to_non_nullable
              as BikabledCaracteristicsDTO,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<SectionContentDTO>,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GlobalSectionCaracteristicsDTOCopyWith<$Res> get globalCaracteristics {
    return $GlobalSectionCaracteristicsDTOCopyWith<$Res>(
        _value.globalCaracteristics, (value) {
      return _then(_value.copyWith(globalCaracteristics: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BikabledCaracteristicsDTOCopyWith<$Res> get bikableCaracteristics {
    return $BikabledCaracteristicsDTOCopyWith<$Res>(
        _value.bikableCaracteristics, (value) {
      return _then(_value.copyWith(bikableCaracteristics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionDTOImplCopyWith<$Res>
    implements $SectionDTOCopyWith<$Res> {
  factory _$$SectionDTOImplCopyWith(
          _$SectionDTOImpl value, $Res Function(_$SectionDTOImpl) then) =
      __$$SectionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String name,
      List<String> ways,
      List<String> municipalities,
      String illustration,
      GlobalSectionCaracteristicsDTO globalCaracteristics,
      BikabledCaracteristicsDTO bikableCaracteristics,
      List<SectionContentDTO> content,
      String? comment});

  @override
  $GlobalSectionCaracteristicsDTOCopyWith<$Res> get globalCaracteristics;
  @override
  $BikabledCaracteristicsDTOCopyWith<$Res> get bikableCaracteristics;
}

/// @nodoc
class __$$SectionDTOImplCopyWithImpl<$Res>
    extends _$SectionDTOCopyWithImpl<$Res, _$SectionDTOImpl>
    implements _$$SectionDTOImplCopyWith<$Res> {
  __$$SectionDTOImplCopyWithImpl(
      _$SectionDTOImpl _value, $Res Function(_$SectionDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? name = null,
    Object? ways = null,
    Object? municipalities = null,
    Object? illustration = null,
    Object? globalCaracteristics = null,
    Object? bikableCaracteristics = null,
    Object? content = null,
    Object? comment = freezed,
  }) {
    return _then(_$SectionDTOImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ways: null == ways
          ? _value._ways
          : ways // ignore: cast_nullable_to_non_nullable
              as List<String>,
      municipalities: null == municipalities
          ? _value._municipalities
          : municipalities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      illustration: null == illustration
          ? _value.illustration
          : illustration // ignore: cast_nullable_to_non_nullable
              as String,
      globalCaracteristics: null == globalCaracteristics
          ? _value.globalCaracteristics
          : globalCaracteristics // ignore: cast_nullable_to_non_nullable
              as GlobalSectionCaracteristicsDTO,
      bikableCaracteristics: null == bikableCaracteristics
          ? _value.bikableCaracteristics
          : bikableCaracteristics // ignore: cast_nullable_to_non_nullable
              as BikabledCaracteristicsDTO,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<SectionContentDTO>,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SectionDTOImpl implements _SectionDTO {
  const _$SectionDTOImpl(
      {required this.index,
      required this.name,
      required final List<String> ways,
      required final List<String> municipalities,
      required this.illustration,
      required this.globalCaracteristics,
      required this.bikableCaracteristics,
      required final List<SectionContentDTO> content,
      this.comment})
      : _ways = ways,
        _municipalities = municipalities,
        _content = content;

  factory _$SectionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionDTOImplFromJson(json);

  @override
  final int index;
  @override
  final String name;
  final List<String> _ways;
  @override
  List<String> get ways {
    if (_ways is EqualUnmodifiableListView) return _ways;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ways);
  }

  final List<String> _municipalities;
  @override
  List<String> get municipalities {
    if (_municipalities is EqualUnmodifiableListView) return _municipalities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_municipalities);
  }

  @override
  final String illustration;
  @override
  final GlobalSectionCaracteristicsDTO globalCaracteristics;
  @override
  final BikabledCaracteristicsDTO bikableCaracteristics;
  final List<SectionContentDTO> _content;
  @override
  List<SectionContentDTO> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final String? comment;

  @override
  String toString() {
    return 'SectionDTO(index: $index, name: $name, ways: $ways, municipalities: $municipalities, illustration: $illustration, globalCaracteristics: $globalCaracteristics, bikableCaracteristics: $bikableCaracteristics, content: $content, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionDTOImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._ways, _ways) &&
            const DeepCollectionEquality()
                .equals(other._municipalities, _municipalities) &&
            (identical(other.illustration, illustration) ||
                other.illustration == illustration) &&
            (identical(other.globalCaracteristics, globalCaracteristics) ||
                other.globalCaracteristics == globalCaracteristics) &&
            (identical(other.bikableCaracteristics, bikableCaracteristics) ||
                other.bikableCaracteristics == bikableCaracteristics) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      index,
      name,
      const DeepCollectionEquality().hash(_ways),
      const DeepCollectionEquality().hash(_municipalities),
      illustration,
      globalCaracteristics,
      bikableCaracteristics,
      const DeepCollectionEquality().hash(_content),
      comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionDTOImplCopyWith<_$SectionDTOImpl> get copyWith =>
      __$$SectionDTOImplCopyWithImpl<_$SectionDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionDTOImplToJson(
      this,
    );
  }
}

abstract class _SectionDTO implements SectionDTO {
  const factory _SectionDTO(
      {required final int index,
      required final String name,
      required final List<String> ways,
      required final List<String> municipalities,
      required final String illustration,
      required final GlobalSectionCaracteristicsDTO globalCaracteristics,
      required final BikabledCaracteristicsDTO bikableCaracteristics,
      required final List<SectionContentDTO> content,
      final String? comment}) = _$SectionDTOImpl;

  factory _SectionDTO.fromJson(Map<String, dynamic> json) =
      _$SectionDTOImpl.fromJson;

  @override
  int get index;
  @override
  String get name;
  @override
  List<String> get ways;
  @override
  List<String> get municipalities;
  @override
  String get illustration;
  @override
  GlobalSectionCaracteristicsDTO get globalCaracteristics;
  @override
  BikabledCaracteristicsDTO get bikableCaracteristics;
  @override
  List<SectionContentDTO> get content;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$SectionDTOImplCopyWith<_$SectionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SectionContentDTO _$SectionContentDTOFromJson(Map<String, dynamic> json) {
  return _SectionContentDTO.fromJson(json);
}

/// @nodoc
mixin _$SectionContentDTO {
  String get sectionName => throw _privateConstructorUsedError;
  int get pictureQuantity => throw _privateConstructorUsedError;
  List<CapturesDTO> get pictures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionContentDTOCopyWith<SectionContentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionContentDTOCopyWith<$Res> {
  factory $SectionContentDTOCopyWith(
          SectionContentDTO value, $Res Function(SectionContentDTO) then) =
      _$SectionContentDTOCopyWithImpl<$Res, SectionContentDTO>;
  @useResult
  $Res call(
      {String sectionName, int pictureQuantity, List<CapturesDTO> pictures});
}

/// @nodoc
class _$SectionContentDTOCopyWithImpl<$Res, $Val extends SectionContentDTO>
    implements $SectionContentDTOCopyWith<$Res> {
  _$SectionContentDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionName = null,
    Object? pictureQuantity = null,
    Object? pictures = null,
  }) {
    return _then(_value.copyWith(
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
      pictureQuantity: null == pictureQuantity
          ? _value.pictureQuantity
          : pictureQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<CapturesDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionContentDTOImplCopyWith<$Res>
    implements $SectionContentDTOCopyWith<$Res> {
  factory _$$SectionContentDTOImplCopyWith(_$SectionContentDTOImpl value,
          $Res Function(_$SectionContentDTOImpl) then) =
      __$$SectionContentDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sectionName, int pictureQuantity, List<CapturesDTO> pictures});
}

/// @nodoc
class __$$SectionContentDTOImplCopyWithImpl<$Res>
    extends _$SectionContentDTOCopyWithImpl<$Res, _$SectionContentDTOImpl>
    implements _$$SectionContentDTOImplCopyWith<$Res> {
  __$$SectionContentDTOImplCopyWithImpl(_$SectionContentDTOImpl _value,
      $Res Function(_$SectionContentDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionName = null,
    Object? pictureQuantity = null,
    Object? pictures = null,
  }) {
    return _then(_$SectionContentDTOImpl(
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
      pictureQuantity: null == pictureQuantity
          ? _value.pictureQuantity
          : pictureQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      pictures: null == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<CapturesDTO>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SectionContentDTOImpl implements _SectionContentDTO {
  const _$SectionContentDTOImpl(
      {required this.sectionName,
      required this.pictureQuantity,
      required final List<CapturesDTO> pictures})
      : _pictures = pictures;

  factory _$SectionContentDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionContentDTOImplFromJson(json);

  @override
  final String sectionName;
  @override
  final int pictureQuantity;
  final List<CapturesDTO> _pictures;
  @override
  List<CapturesDTO> get pictures {
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pictures);
  }

  @override
  String toString() {
    return 'SectionContentDTO(sectionName: $sectionName, pictureQuantity: $pictureQuantity, pictures: $pictures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionContentDTOImpl &&
            (identical(other.sectionName, sectionName) ||
                other.sectionName == sectionName) &&
            (identical(other.pictureQuantity, pictureQuantity) ||
                other.pictureQuantity == pictureQuantity) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sectionName, pictureQuantity,
      const DeepCollectionEquality().hash(_pictures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionContentDTOImplCopyWith<_$SectionContentDTOImpl> get copyWith =>
      __$$SectionContentDTOImplCopyWithImpl<_$SectionContentDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionContentDTOImplToJson(
      this,
    );
  }
}

abstract class _SectionContentDTO implements SectionContentDTO {
  const factory _SectionContentDTO(
      {required final String sectionName,
      required final int pictureQuantity,
      required final List<CapturesDTO> pictures}) = _$SectionContentDTOImpl;

  factory _SectionContentDTO.fromJson(Map<String, dynamic> json) =
      _$SectionContentDTOImpl.fromJson;

  @override
  String get sectionName;
  @override
  int get pictureQuantity;
  @override
  List<CapturesDTO> get pictures;
  @override
  @JsonKey(ignore: true)
  _$$SectionContentDTOImplCopyWith<_$SectionContentDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
