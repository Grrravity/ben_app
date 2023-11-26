// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../project/intersection/intersection_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntersectionDTO _$IntersectionDTOFromJson(Map<String, dynamic> json) {
  return _IntersectionDTO.fromJson(json);
}

/// @nodoc
mixin _$IntersectionDTO {
  int get index => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get ways => throw _privateConstructorUsedError;
  List<String> get municipalities => throw _privateConstructorUsedError;
  String get illustration => throw _privateConstructorUsedError;
  GlobalIntersectionCaracteristicsDTO get globalCaracteristics =>
      throw _privateConstructorUsedError;
  BikabledCaracteristicsDTO get bikableCaracteristics =>
      throw _privateConstructorUsedError;
  List<IntersectionContentDTO> get content =>
      throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntersectionDTOCopyWith<IntersectionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntersectionDTOCopyWith<$Res> {
  factory $IntersectionDTOCopyWith(
          IntersectionDTO value, $Res Function(IntersectionDTO) then) =
      _$IntersectionDTOCopyWithImpl<$Res, IntersectionDTO>;
  @useResult
  $Res call(
      {int index,
      String name,
      List<String> ways,
      List<String> municipalities,
      String illustration,
      GlobalIntersectionCaracteristicsDTO globalCaracteristics,
      BikabledCaracteristicsDTO bikableCaracteristics,
      List<IntersectionContentDTO> content,
      String? comment});

  $GlobalIntersectionCaracteristicsDTOCopyWith<$Res> get globalCaracteristics;
  $BikabledCaracteristicsDTOCopyWith<$Res> get bikableCaracteristics;
}

/// @nodoc
class _$IntersectionDTOCopyWithImpl<$Res, $Val extends IntersectionDTO>
    implements $IntersectionDTOCopyWith<$Res> {
  _$IntersectionDTOCopyWithImpl(this._value, this._then);

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
              as GlobalIntersectionCaracteristicsDTO,
      bikableCaracteristics: null == bikableCaracteristics
          ? _value.bikableCaracteristics
          : bikableCaracteristics // ignore: cast_nullable_to_non_nullable
              as BikabledCaracteristicsDTO,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<IntersectionContentDTO>,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GlobalIntersectionCaracteristicsDTOCopyWith<$Res> get globalCaracteristics {
    return $GlobalIntersectionCaracteristicsDTOCopyWith<$Res>(
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
abstract class _$$IntersectionDTOImplCopyWith<$Res>
    implements $IntersectionDTOCopyWith<$Res> {
  factory _$$IntersectionDTOImplCopyWith(_$IntersectionDTOImpl value,
          $Res Function(_$IntersectionDTOImpl) then) =
      __$$IntersectionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String name,
      List<String> ways,
      List<String> municipalities,
      String illustration,
      GlobalIntersectionCaracteristicsDTO globalCaracteristics,
      BikabledCaracteristicsDTO bikableCaracteristics,
      List<IntersectionContentDTO> content,
      String? comment});

  @override
  $GlobalIntersectionCaracteristicsDTOCopyWith<$Res> get globalCaracteristics;
  @override
  $BikabledCaracteristicsDTOCopyWith<$Res> get bikableCaracteristics;
}

/// @nodoc
class __$$IntersectionDTOImplCopyWithImpl<$Res>
    extends _$IntersectionDTOCopyWithImpl<$Res, _$IntersectionDTOImpl>
    implements _$$IntersectionDTOImplCopyWith<$Res> {
  __$$IntersectionDTOImplCopyWithImpl(
      _$IntersectionDTOImpl _value, $Res Function(_$IntersectionDTOImpl) _then)
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
    return _then(_$IntersectionDTOImpl(
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
              as GlobalIntersectionCaracteristicsDTO,
      bikableCaracteristics: null == bikableCaracteristics
          ? _value.bikableCaracteristics
          : bikableCaracteristics // ignore: cast_nullable_to_non_nullable
              as BikabledCaracteristicsDTO,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<IntersectionContentDTO>,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$IntersectionDTOImpl implements _IntersectionDTO {
  const _$IntersectionDTOImpl(
      {required this.index,
      required this.name,
      required final List<String> ways,
      required final List<String> municipalities,
      required this.illustration,
      required this.globalCaracteristics,
      required this.bikableCaracteristics,
      required final List<IntersectionContentDTO> content,
      this.comment})
      : _ways = ways,
        _municipalities = municipalities,
        _content = content;

  factory _$IntersectionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntersectionDTOImplFromJson(json);

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
  final GlobalIntersectionCaracteristicsDTO globalCaracteristics;
  @override
  final BikabledCaracteristicsDTO bikableCaracteristics;
  final List<IntersectionContentDTO> _content;
  @override
  List<IntersectionContentDTO> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final String? comment;

  @override
  String toString() {
    return 'IntersectionDTO(index: $index, name: $name, ways: $ways, municipalities: $municipalities, illustration: $illustration, globalCaracteristics: $globalCaracteristics, bikableCaracteristics: $bikableCaracteristics, content: $content, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntersectionDTOImpl &&
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
  _$$IntersectionDTOImplCopyWith<_$IntersectionDTOImpl> get copyWith =>
      __$$IntersectionDTOImplCopyWithImpl<_$IntersectionDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntersectionDTOImplToJson(
      this,
    );
  }
}

abstract class _IntersectionDTO implements IntersectionDTO {
  const factory _IntersectionDTO(
      {required final int index,
      required final String name,
      required final List<String> ways,
      required final List<String> municipalities,
      required final String illustration,
      required final GlobalIntersectionCaracteristicsDTO globalCaracteristics,
      required final BikabledCaracteristicsDTO bikableCaracteristics,
      required final List<IntersectionContentDTO> content,
      final String? comment}) = _$IntersectionDTOImpl;

  factory _IntersectionDTO.fromJson(Map<String, dynamic> json) =
      _$IntersectionDTOImpl.fromJson;

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
  GlobalIntersectionCaracteristicsDTO get globalCaracteristics;
  @override
  BikabledCaracteristicsDTO get bikableCaracteristics;
  @override
  List<IntersectionContentDTO> get content;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$IntersectionDTOImplCopyWith<_$IntersectionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntersectionContentDTO _$IntersectionContentDTOFromJson(
    Map<String, dynamic> json) {
  return _IntersectionContentDTO.fromJson(json);
}

/// @nodoc
mixin _$IntersectionContentDTO {
  String get sectionName => throw _privateConstructorUsedError;
  int get pictureQuantity => throw _privateConstructorUsedError;
  List<CapturesDTO> get pictures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntersectionContentDTOCopyWith<IntersectionContentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntersectionContentDTOCopyWith<$Res> {
  factory $IntersectionContentDTOCopyWith(IntersectionContentDTO value,
          $Res Function(IntersectionContentDTO) then) =
      _$IntersectionContentDTOCopyWithImpl<$Res, IntersectionContentDTO>;
  @useResult
  $Res call(
      {String sectionName, int pictureQuantity, List<CapturesDTO> pictures});
}

/// @nodoc
class _$IntersectionContentDTOCopyWithImpl<$Res,
        $Val extends IntersectionContentDTO>
    implements $IntersectionContentDTOCopyWith<$Res> {
  _$IntersectionContentDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$IntersectionContentDTOImplCopyWith<$Res>
    implements $IntersectionContentDTOCopyWith<$Res> {
  factory _$$IntersectionContentDTOImplCopyWith(
          _$IntersectionContentDTOImpl value,
          $Res Function(_$IntersectionContentDTOImpl) then) =
      __$$IntersectionContentDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sectionName, int pictureQuantity, List<CapturesDTO> pictures});
}

/// @nodoc
class __$$IntersectionContentDTOImplCopyWithImpl<$Res>
    extends _$IntersectionContentDTOCopyWithImpl<$Res,
        _$IntersectionContentDTOImpl>
    implements _$$IntersectionContentDTOImplCopyWith<$Res> {
  __$$IntersectionContentDTOImplCopyWithImpl(
      _$IntersectionContentDTOImpl _value,
      $Res Function(_$IntersectionContentDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionName = null,
    Object? pictureQuantity = null,
    Object? pictures = null,
  }) {
    return _then(_$IntersectionContentDTOImpl(
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
class _$IntersectionContentDTOImpl implements _IntersectionContentDTO {
  const _$IntersectionContentDTOImpl(
      {required this.sectionName,
      required this.pictureQuantity,
      required final List<CapturesDTO> pictures})
      : _pictures = pictures;

  factory _$IntersectionContentDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntersectionContentDTOImplFromJson(json);

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
    return 'IntersectionContentDTO(sectionName: $sectionName, pictureQuantity: $pictureQuantity, pictures: $pictures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntersectionContentDTOImpl &&
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
  _$$IntersectionContentDTOImplCopyWith<_$IntersectionContentDTOImpl>
      get copyWith => __$$IntersectionContentDTOImplCopyWithImpl<
          _$IntersectionContentDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntersectionContentDTOImplToJson(
      this,
    );
  }
}

abstract class _IntersectionContentDTO implements IntersectionContentDTO {
  const factory _IntersectionContentDTO(
          {required final String sectionName,
          required final int pictureQuantity,
          required final List<CapturesDTO> pictures}) =
      _$IntersectionContentDTOImpl;

  factory _IntersectionContentDTO.fromJson(Map<String, dynamic> json) =
      _$IntersectionContentDTOImpl.fromJson;

  @override
  String get sectionName;
  @override
  int get pictureQuantity;
  @override
  List<CapturesDTO> get pictures;
  @override
  @JsonKey(ignore: true)
  _$$IntersectionContentDTOImplCopyWith<_$IntersectionContentDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
