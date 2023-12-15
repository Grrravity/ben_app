// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../project/create_project_dto.cmd.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateProjectCmdDTO _$CreateProjectCmdDTOFromJson(Map<String, dynamic> json) {
  return _CreateProjectCmdDTO.fromJson(json);
}

/// @nodoc
mixin _$CreateProjectCmdDTO {
  String get name => throw _privateConstructorUsedError;
  List<CreateParcoursCmdDTO> get parcours => throw _privateConstructorUsedError;
  ProjectSettingsDTO get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProjectCmdDTOCopyWith<CreateProjectCmdDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectCmdDTOCopyWith<$Res> {
  factory $CreateProjectCmdDTOCopyWith(
          CreateProjectCmdDTO value, $Res Function(CreateProjectCmdDTO) then) =
      _$CreateProjectCmdDTOCopyWithImpl<$Res, CreateProjectCmdDTO>;
  @useResult
  $Res call(
      {String name,
      List<CreateParcoursCmdDTO> parcours,
      ProjectSettingsDTO settings});

  $ProjectSettingsDTOCopyWith<$Res> get settings;
}

/// @nodoc
class _$CreateProjectCmdDTOCopyWithImpl<$Res, $Val extends CreateProjectCmdDTO>
    implements $CreateProjectCmdDTOCopyWith<$Res> {
  _$CreateProjectCmdDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? parcours = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parcours: null == parcours
          ? _value.parcours
          : parcours // ignore: cast_nullable_to_non_nullable
              as List<CreateParcoursCmdDTO>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ProjectSettingsDTO,
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
abstract class _$$CreateProjectCmdDTOImplCopyWith<$Res>
    implements $CreateProjectCmdDTOCopyWith<$Res> {
  factory _$$CreateProjectCmdDTOImplCopyWith(_$CreateProjectCmdDTOImpl value,
          $Res Function(_$CreateProjectCmdDTOImpl) then) =
      __$$CreateProjectCmdDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<CreateParcoursCmdDTO> parcours,
      ProjectSettingsDTO settings});

  @override
  $ProjectSettingsDTOCopyWith<$Res> get settings;
}

/// @nodoc
class __$$CreateProjectCmdDTOImplCopyWithImpl<$Res>
    extends _$CreateProjectCmdDTOCopyWithImpl<$Res, _$CreateProjectCmdDTOImpl>
    implements _$$CreateProjectCmdDTOImplCopyWith<$Res> {
  __$$CreateProjectCmdDTOImplCopyWithImpl(_$CreateProjectCmdDTOImpl _value,
      $Res Function(_$CreateProjectCmdDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? parcours = null,
    Object? settings = null,
  }) {
    return _then(_$CreateProjectCmdDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parcours: null == parcours
          ? _value._parcours
          : parcours // ignore: cast_nullable_to_non_nullable
              as List<CreateParcoursCmdDTO>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ProjectSettingsDTO,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CreateProjectCmdDTOImpl implements _CreateProjectCmdDTO {
  const _$CreateProjectCmdDTOImpl(
      {required this.name,
      required final List<CreateParcoursCmdDTO> parcours,
      required this.settings})
      : _parcours = parcours;

  factory _$CreateProjectCmdDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateProjectCmdDTOImplFromJson(json);

  @override
  final String name;
  final List<CreateParcoursCmdDTO> _parcours;
  @override
  List<CreateParcoursCmdDTO> get parcours {
    if (_parcours is EqualUnmodifiableListView) return _parcours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parcours);
  }

  @override
  final ProjectSettingsDTO settings;

  @override
  String toString() {
    return 'CreateProjectCmdDTO(name: $name, parcours: $parcours, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProjectCmdDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._parcours, _parcours) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_parcours), settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProjectCmdDTOImplCopyWith<_$CreateProjectCmdDTOImpl> get copyWith =>
      __$$CreateProjectCmdDTOImplCopyWithImpl<_$CreateProjectCmdDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProjectCmdDTOImplToJson(
      this,
    );
  }
}

abstract class _CreateProjectCmdDTO implements CreateProjectCmdDTO {
  const factory _CreateProjectCmdDTO(
      {required final String name,
      required final List<CreateParcoursCmdDTO> parcours,
      required final ProjectSettingsDTO settings}) = _$CreateProjectCmdDTOImpl;

  factory _CreateProjectCmdDTO.fromJson(Map<String, dynamic> json) =
      _$CreateProjectCmdDTOImpl.fromJson;

  @override
  String get name;
  @override
  List<CreateParcoursCmdDTO> get parcours;
  @override
  ProjectSettingsDTO get settings;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectCmdDTOImplCopyWith<_$CreateProjectCmdDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
