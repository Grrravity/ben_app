// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../project/project_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectDTO _$ProjectDTOFromJson(Map<String, dynamic> json) {
  return _ProjectDTO.fromJson(json);
}

/// @nodoc
mixin _$ProjectDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @DocumentSerializer()
  List<DocumentReference<Map<String, dynamic>>> get parcoursReferences =>
      throw _privateConstructorUsedError;
  ProjectSettingsDTO get settings => throw _privateConstructorUsedError;
  int get totalSections => throw _privateConstructorUsedError;
  int get doneSections => throw _privateConstructorUsedError;
  int get totalIntersections => throw _privateConstructorUsedError;
  int get doneIntersections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectDTOCopyWith<ProjectDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDTOCopyWith<$Res> {
  factory $ProjectDTOCopyWith(
          ProjectDTO value, $Res Function(ProjectDTO) then) =
      _$ProjectDTOCopyWithImpl<$Res, ProjectDTO>;
  @useResult
  $Res call(
      {String id,
      String name,
      @DocumentSerializer()
      List<DocumentReference<Map<String, dynamic>>> parcoursReferences,
      ProjectSettingsDTO settings,
      int totalSections,
      int doneSections,
      int totalIntersections,
      int doneIntersections});

  $ProjectSettingsDTOCopyWith<$Res> get settings;
}

/// @nodoc
class _$ProjectDTOCopyWithImpl<$Res, $Val extends ProjectDTO>
    implements $ProjectDTOCopyWith<$Res> {
  _$ProjectDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? parcoursReferences = null,
    Object? settings = null,
    Object? totalSections = null,
    Object? doneSections = null,
    Object? totalIntersections = null,
    Object? doneIntersections = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parcoursReferences: null == parcoursReferences
          ? _value.parcoursReferences
          : parcoursReferences // ignore: cast_nullable_to_non_nullable
              as List<DocumentReference<Map<String, dynamic>>>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ProjectSettingsDTO,
      totalSections: null == totalSections
          ? _value.totalSections
          : totalSections // ignore: cast_nullable_to_non_nullable
              as int,
      doneSections: null == doneSections
          ? _value.doneSections
          : doneSections // ignore: cast_nullable_to_non_nullable
              as int,
      totalIntersections: null == totalIntersections
          ? _value.totalIntersections
          : totalIntersections // ignore: cast_nullable_to_non_nullable
              as int,
      doneIntersections: null == doneIntersections
          ? _value.doneIntersections
          : doneIntersections // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectSettingsDTOCopyWith<$Res> get settings {
    return $ProjectSettingsDTOCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectDTOImplCopyWith<$Res>
    implements $ProjectDTOCopyWith<$Res> {
  factory _$$ProjectDTOImplCopyWith(
          _$ProjectDTOImpl value, $Res Function(_$ProjectDTOImpl) then) =
      __$$ProjectDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @DocumentSerializer()
      List<DocumentReference<Map<String, dynamic>>> parcoursReferences,
      ProjectSettingsDTO settings,
      int totalSections,
      int doneSections,
      int totalIntersections,
      int doneIntersections});

  @override
  $ProjectSettingsDTOCopyWith<$Res> get settings;
}

/// @nodoc
class __$$ProjectDTOImplCopyWithImpl<$Res>
    extends _$ProjectDTOCopyWithImpl<$Res, _$ProjectDTOImpl>
    implements _$$ProjectDTOImplCopyWith<$Res> {
  __$$ProjectDTOImplCopyWithImpl(
      _$ProjectDTOImpl _value, $Res Function(_$ProjectDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? parcoursReferences = null,
    Object? settings = null,
    Object? totalSections = null,
    Object? doneSections = null,
    Object? totalIntersections = null,
    Object? doneIntersections = null,
  }) {
    return _then(_$ProjectDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parcoursReferences: null == parcoursReferences
          ? _value._parcoursReferences
          : parcoursReferences // ignore: cast_nullable_to_non_nullable
              as List<DocumentReference<Map<String, dynamic>>>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ProjectSettingsDTO,
      totalSections: null == totalSections
          ? _value.totalSections
          : totalSections // ignore: cast_nullable_to_non_nullable
              as int,
      doneSections: null == doneSections
          ? _value.doneSections
          : doneSections // ignore: cast_nullable_to_non_nullable
              as int,
      totalIntersections: null == totalIntersections
          ? _value.totalIntersections
          : totalIntersections // ignore: cast_nullable_to_non_nullable
              as int,
      doneIntersections: null == doneIntersections
          ? _value.doneIntersections
          : doneIntersections // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProjectDTOImpl implements _ProjectDTO {
  const _$ProjectDTOImpl(
      {required this.id,
      required this.name,
      @DocumentSerializer()
      required final List<DocumentReference<Map<String, dynamic>>>
          parcoursReferences,
      required this.settings,
      required this.totalSections,
      required this.doneSections,
      required this.totalIntersections,
      required this.doneIntersections})
      : _parcoursReferences = parcoursReferences;

  factory _$ProjectDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<DocumentReference<Map<String, dynamic>>> _parcoursReferences;
  @override
  @DocumentSerializer()
  List<DocumentReference<Map<String, dynamic>>> get parcoursReferences {
    if (_parcoursReferences is EqualUnmodifiableListView)
      return _parcoursReferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parcoursReferences);
  }

  @override
  final ProjectSettingsDTO settings;
  @override
  final int totalSections;
  @override
  final int doneSections;
  @override
  final int totalIntersections;
  @override
  final int doneIntersections;

  @override
  String toString() {
    return 'ProjectDTO(id: $id, name: $name, parcoursReferences: $parcoursReferences, settings: $settings, totalSections: $totalSections, doneSections: $doneSections, totalIntersections: $totalIntersections, doneIntersections: $doneIntersections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._parcoursReferences, _parcoursReferences) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.totalSections, totalSections) ||
                other.totalSections == totalSections) &&
            (identical(other.doneSections, doneSections) ||
                other.doneSections == doneSections) &&
            (identical(other.totalIntersections, totalIntersections) ||
                other.totalIntersections == totalIntersections) &&
            (identical(other.doneIntersections, doneIntersections) ||
                other.doneIntersections == doneIntersections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_parcoursReferences),
      settings,
      totalSections,
      doneSections,
      totalIntersections,
      doneIntersections);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDTOImplCopyWith<_$ProjectDTOImpl> get copyWith =>
      __$$ProjectDTOImplCopyWithImpl<_$ProjectDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectDTOImplToJson(
      this,
    );
  }
}

abstract class _ProjectDTO implements ProjectDTO {
  const factory _ProjectDTO(
      {required final String id,
      required final String name,
      @DocumentSerializer()
      required final List<DocumentReference<Map<String, dynamic>>>
          parcoursReferences,
      required final ProjectSettingsDTO settings,
      required final int totalSections,
      required final int doneSections,
      required final int totalIntersections,
      required final int doneIntersections}) = _$ProjectDTOImpl;

  factory _ProjectDTO.fromJson(Map<String, dynamic> json) =
      _$ProjectDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @DocumentSerializer()
  List<DocumentReference<Map<String, dynamic>>> get parcoursReferences;
  @override
  ProjectSettingsDTO get settings;
  @override
  int get totalSections;
  @override
  int get doneSections;
  @override
  int get totalIntersections;
  @override
  int get doneIntersections;
  @override
  @JsonKey(ignore: true)
  _$$ProjectDTOImplCopyWith<_$ProjectDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
