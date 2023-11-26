// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../project/caracteristics/global_section_caracteristics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GlobalSectionCaracteristicsDTO _$GlobalSectionCaracteristicsDTOFromJson(
    Map<String, dynamic> json) {
  return _GlobalSectionCaracteristicsDTO.fromJson(json);
}

/// @nodoc
mixin _$GlobalSectionCaracteristicsDTO {
  double get minWayWidth => throw _privateConstructorUsedError;
  double get maxWayWidth => throw _privateConstructorUsedError;
  double get maxHomeToHomeWidth => throw _privateConstructorUsedError;
  bool get unidirectional => throw _privateConstructorUsedError;
  bool get hasParkingSlot => throw _privateConstructorUsedError;
  ParkingCaracteristicsDTO? get parkingCaracteristics =>
      throw _privateConstructorUsedError;
  SpeedCaracteristicsDTO get speedCaracteristics =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlobalSectionCaracteristicsDTOCopyWith<GlobalSectionCaracteristicsDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalSectionCaracteristicsDTOCopyWith<$Res> {
  factory $GlobalSectionCaracteristicsDTOCopyWith(
          GlobalSectionCaracteristicsDTO value,
          $Res Function(GlobalSectionCaracteristicsDTO) then) =
      _$GlobalSectionCaracteristicsDTOCopyWithImpl<$Res,
          GlobalSectionCaracteristicsDTO>;
  @useResult
  $Res call(
      {double minWayWidth,
      double maxWayWidth,
      double maxHomeToHomeWidth,
      bool unidirectional,
      bool hasParkingSlot,
      ParkingCaracteristicsDTO? parkingCaracteristics,
      SpeedCaracteristicsDTO speedCaracteristics});

  $ParkingCaracteristicsDTOCopyWith<$Res>? get parkingCaracteristics;
  $SpeedCaracteristicsDTOCopyWith<$Res> get speedCaracteristics;
}

/// @nodoc
class _$GlobalSectionCaracteristicsDTOCopyWithImpl<$Res,
        $Val extends GlobalSectionCaracteristicsDTO>
    implements $GlobalSectionCaracteristicsDTOCopyWith<$Res> {
  _$GlobalSectionCaracteristicsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minWayWidth = null,
    Object? maxWayWidth = null,
    Object? maxHomeToHomeWidth = null,
    Object? unidirectional = null,
    Object? hasParkingSlot = null,
    Object? parkingCaracteristics = freezed,
    Object? speedCaracteristics = null,
  }) {
    return _then(_value.copyWith(
      minWayWidth: null == minWayWidth
          ? _value.minWayWidth
          : minWayWidth // ignore: cast_nullable_to_non_nullable
              as double,
      maxWayWidth: null == maxWayWidth
          ? _value.maxWayWidth
          : maxWayWidth // ignore: cast_nullable_to_non_nullable
              as double,
      maxHomeToHomeWidth: null == maxHomeToHomeWidth
          ? _value.maxHomeToHomeWidth
          : maxHomeToHomeWidth // ignore: cast_nullable_to_non_nullable
              as double,
      unidirectional: null == unidirectional
          ? _value.unidirectional
          : unidirectional // ignore: cast_nullable_to_non_nullable
              as bool,
      hasParkingSlot: null == hasParkingSlot
          ? _value.hasParkingSlot
          : hasParkingSlot // ignore: cast_nullable_to_non_nullable
              as bool,
      parkingCaracteristics: freezed == parkingCaracteristics
          ? _value.parkingCaracteristics
          : parkingCaracteristics // ignore: cast_nullable_to_non_nullable
              as ParkingCaracteristicsDTO?,
      speedCaracteristics: null == speedCaracteristics
          ? _value.speedCaracteristics
          : speedCaracteristics // ignore: cast_nullable_to_non_nullable
              as SpeedCaracteristicsDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParkingCaracteristicsDTOCopyWith<$Res>? get parkingCaracteristics {
    if (_value.parkingCaracteristics == null) {
      return null;
    }

    return $ParkingCaracteristicsDTOCopyWith<$Res>(
        _value.parkingCaracteristics!, (value) {
      return _then(_value.copyWith(parkingCaracteristics: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeedCaracteristicsDTOCopyWith<$Res> get speedCaracteristics {
    return $SpeedCaracteristicsDTOCopyWith<$Res>(_value.speedCaracteristics,
        (value) {
      return _then(_value.copyWith(speedCaracteristics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GlobalSectionCaracteristicsDTOImplCopyWith<$Res>
    implements $GlobalSectionCaracteristicsDTOCopyWith<$Res> {
  factory _$$GlobalSectionCaracteristicsDTOImplCopyWith(
          _$GlobalSectionCaracteristicsDTOImpl value,
          $Res Function(_$GlobalSectionCaracteristicsDTOImpl) then) =
      __$$GlobalSectionCaracteristicsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double minWayWidth,
      double maxWayWidth,
      double maxHomeToHomeWidth,
      bool unidirectional,
      bool hasParkingSlot,
      ParkingCaracteristicsDTO? parkingCaracteristics,
      SpeedCaracteristicsDTO speedCaracteristics});

  @override
  $ParkingCaracteristicsDTOCopyWith<$Res>? get parkingCaracteristics;
  @override
  $SpeedCaracteristicsDTOCopyWith<$Res> get speedCaracteristics;
}

/// @nodoc
class __$$GlobalSectionCaracteristicsDTOImplCopyWithImpl<$Res>
    extends _$GlobalSectionCaracteristicsDTOCopyWithImpl<$Res,
        _$GlobalSectionCaracteristicsDTOImpl>
    implements _$$GlobalSectionCaracteristicsDTOImplCopyWith<$Res> {
  __$$GlobalSectionCaracteristicsDTOImplCopyWithImpl(
      _$GlobalSectionCaracteristicsDTOImpl _value,
      $Res Function(_$GlobalSectionCaracteristicsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minWayWidth = null,
    Object? maxWayWidth = null,
    Object? maxHomeToHomeWidth = null,
    Object? unidirectional = null,
    Object? hasParkingSlot = null,
    Object? parkingCaracteristics = freezed,
    Object? speedCaracteristics = null,
  }) {
    return _then(_$GlobalSectionCaracteristicsDTOImpl(
      minWayWidth: null == minWayWidth
          ? _value.minWayWidth
          : minWayWidth // ignore: cast_nullable_to_non_nullable
              as double,
      maxWayWidth: null == maxWayWidth
          ? _value.maxWayWidth
          : maxWayWidth // ignore: cast_nullable_to_non_nullable
              as double,
      maxHomeToHomeWidth: null == maxHomeToHomeWidth
          ? _value.maxHomeToHomeWidth
          : maxHomeToHomeWidth // ignore: cast_nullable_to_non_nullable
              as double,
      unidirectional: null == unidirectional
          ? _value.unidirectional
          : unidirectional // ignore: cast_nullable_to_non_nullable
              as bool,
      hasParkingSlot: null == hasParkingSlot
          ? _value.hasParkingSlot
          : hasParkingSlot // ignore: cast_nullable_to_non_nullable
              as bool,
      parkingCaracteristics: freezed == parkingCaracteristics
          ? _value.parkingCaracteristics
          : parkingCaracteristics // ignore: cast_nullable_to_non_nullable
              as ParkingCaracteristicsDTO?,
      speedCaracteristics: null == speedCaracteristics
          ? _value.speedCaracteristics
          : speedCaracteristics // ignore: cast_nullable_to_non_nullable
              as SpeedCaracteristicsDTO,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GlobalSectionCaracteristicsDTOImpl
    implements _GlobalSectionCaracteristicsDTO {
  const _$GlobalSectionCaracteristicsDTOImpl(
      {required this.minWayWidth,
      required this.maxWayWidth,
      required this.maxHomeToHomeWidth,
      required this.unidirectional,
      required this.hasParkingSlot,
      this.parkingCaracteristics,
      required this.speedCaracteristics});

  factory _$GlobalSectionCaracteristicsDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GlobalSectionCaracteristicsDTOImplFromJson(json);

  @override
  final double minWayWidth;
  @override
  final double maxWayWidth;
  @override
  final double maxHomeToHomeWidth;
  @override
  final bool unidirectional;
  @override
  final bool hasParkingSlot;
  @override
  final ParkingCaracteristicsDTO? parkingCaracteristics;
  @override
  final SpeedCaracteristicsDTO speedCaracteristics;

  @override
  String toString() {
    return 'GlobalSectionCaracteristicsDTO(minWayWidth: $minWayWidth, maxWayWidth: $maxWayWidth, maxHomeToHomeWidth: $maxHomeToHomeWidth, unidirectional: $unidirectional, hasParkingSlot: $hasParkingSlot, parkingCaracteristics: $parkingCaracteristics, speedCaracteristics: $speedCaracteristics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalSectionCaracteristicsDTOImpl &&
            (identical(other.minWayWidth, minWayWidth) ||
                other.minWayWidth == minWayWidth) &&
            (identical(other.maxWayWidth, maxWayWidth) ||
                other.maxWayWidth == maxWayWidth) &&
            (identical(other.maxHomeToHomeWidth, maxHomeToHomeWidth) ||
                other.maxHomeToHomeWidth == maxHomeToHomeWidth) &&
            (identical(other.unidirectional, unidirectional) ||
                other.unidirectional == unidirectional) &&
            (identical(other.hasParkingSlot, hasParkingSlot) ||
                other.hasParkingSlot == hasParkingSlot) &&
            (identical(other.parkingCaracteristics, parkingCaracteristics) ||
                other.parkingCaracteristics == parkingCaracteristics) &&
            (identical(other.speedCaracteristics, speedCaracteristics) ||
                other.speedCaracteristics == speedCaracteristics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      minWayWidth,
      maxWayWidth,
      maxHomeToHomeWidth,
      unidirectional,
      hasParkingSlot,
      parkingCaracteristics,
      speedCaracteristics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalSectionCaracteristicsDTOImplCopyWith<
          _$GlobalSectionCaracteristicsDTOImpl>
      get copyWith => __$$GlobalSectionCaracteristicsDTOImplCopyWithImpl<
          _$GlobalSectionCaracteristicsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlobalSectionCaracteristicsDTOImplToJson(
      this,
    );
  }
}

abstract class _GlobalSectionCaracteristicsDTO
    implements GlobalSectionCaracteristicsDTO {
  const factory _GlobalSectionCaracteristicsDTO(
          {required final double minWayWidth,
          required final double maxWayWidth,
          required final double maxHomeToHomeWidth,
          required final bool unidirectional,
          required final bool hasParkingSlot,
          final ParkingCaracteristicsDTO? parkingCaracteristics,
          required final SpeedCaracteristicsDTO speedCaracteristics}) =
      _$GlobalSectionCaracteristicsDTOImpl;

  factory _GlobalSectionCaracteristicsDTO.fromJson(Map<String, dynamic> json) =
      _$GlobalSectionCaracteristicsDTOImpl.fromJson;

  @override
  double get minWayWidth;
  @override
  double get maxWayWidth;
  @override
  double get maxHomeToHomeWidth;
  @override
  bool get unidirectional;
  @override
  bool get hasParkingSlot;
  @override
  ParkingCaracteristicsDTO? get parkingCaracteristics;
  @override
  SpeedCaracteristicsDTO get speedCaracteristics;
  @override
  @JsonKey(ignore: true)
  _$$GlobalSectionCaracteristicsDTOImplCopyWith<
          _$GlobalSectionCaracteristicsDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ParkingCaracteristicsDTO _$ParkingCaracteristicsDTOFromJson(
    Map<String, dynamic> json) {
  return _ParkingCaracteristicsDTO.fromJson(json);
}

/// @nodoc
mixin _$ParkingCaracteristicsDTO {
  ParkingSideDTO get parkingSide => throw _privateConstructorUsedError;
  ParkingTypeDTO get parkingType => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParkingCaracteristicsDTOCopyWith<ParkingCaracteristicsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingCaracteristicsDTOCopyWith<$Res> {
  factory $ParkingCaracteristicsDTOCopyWith(ParkingCaracteristicsDTO value,
          $Res Function(ParkingCaracteristicsDTO) then) =
      _$ParkingCaracteristicsDTOCopyWithImpl<$Res, ParkingCaracteristicsDTO>;
  @useResult
  $Res call(
      {ParkingSideDTO parkingSide, ParkingTypeDTO parkingType, int number});
}

/// @nodoc
class _$ParkingCaracteristicsDTOCopyWithImpl<$Res,
        $Val extends ParkingCaracteristicsDTO>
    implements $ParkingCaracteristicsDTOCopyWith<$Res> {
  _$ParkingCaracteristicsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parkingSide = null,
    Object? parkingType = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      parkingSide: null == parkingSide
          ? _value.parkingSide
          : parkingSide // ignore: cast_nullable_to_non_nullable
              as ParkingSideDTO,
      parkingType: null == parkingType
          ? _value.parkingType
          : parkingType // ignore: cast_nullable_to_non_nullable
              as ParkingTypeDTO,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParkingCaracteristicsDTOImplCopyWith<$Res>
    implements $ParkingCaracteristicsDTOCopyWith<$Res> {
  factory _$$ParkingCaracteristicsDTOImplCopyWith(
          _$ParkingCaracteristicsDTOImpl value,
          $Res Function(_$ParkingCaracteristicsDTOImpl) then) =
      __$$ParkingCaracteristicsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ParkingSideDTO parkingSide, ParkingTypeDTO parkingType, int number});
}

/// @nodoc
class __$$ParkingCaracteristicsDTOImplCopyWithImpl<$Res>
    extends _$ParkingCaracteristicsDTOCopyWithImpl<$Res,
        _$ParkingCaracteristicsDTOImpl>
    implements _$$ParkingCaracteristicsDTOImplCopyWith<$Res> {
  __$$ParkingCaracteristicsDTOImplCopyWithImpl(
      _$ParkingCaracteristicsDTOImpl _value,
      $Res Function(_$ParkingCaracteristicsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parkingSide = null,
    Object? parkingType = null,
    Object? number = null,
  }) {
    return _then(_$ParkingCaracteristicsDTOImpl(
      parkingSide: null == parkingSide
          ? _value.parkingSide
          : parkingSide // ignore: cast_nullable_to_non_nullable
              as ParkingSideDTO,
      parkingType: null == parkingType
          ? _value.parkingType
          : parkingType // ignore: cast_nullable_to_non_nullable
              as ParkingTypeDTO,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParkingCaracteristicsDTOImpl implements _ParkingCaracteristicsDTO {
  const _$ParkingCaracteristicsDTOImpl(
      {required this.parkingSide,
      required this.parkingType,
      required this.number});

  factory _$ParkingCaracteristicsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParkingCaracteristicsDTOImplFromJson(json);

  @override
  final ParkingSideDTO parkingSide;
  @override
  final ParkingTypeDTO parkingType;
  @override
  final int number;

  @override
  String toString() {
    return 'ParkingCaracteristicsDTO(parkingSide: $parkingSide, parkingType: $parkingType, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingCaracteristicsDTOImpl &&
            (identical(other.parkingSide, parkingSide) ||
                other.parkingSide == parkingSide) &&
            (identical(other.parkingType, parkingType) ||
                other.parkingType == parkingType) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, parkingSide, parkingType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParkingCaracteristicsDTOImplCopyWith<_$ParkingCaracteristicsDTOImpl>
      get copyWith => __$$ParkingCaracteristicsDTOImplCopyWithImpl<
          _$ParkingCaracteristicsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParkingCaracteristicsDTOImplToJson(
      this,
    );
  }
}

abstract class _ParkingCaracteristicsDTO implements ParkingCaracteristicsDTO {
  const factory _ParkingCaracteristicsDTO(
      {required final ParkingSideDTO parkingSide,
      required final ParkingTypeDTO parkingType,
      required final int number}) = _$ParkingCaracteristicsDTOImpl;

  factory _ParkingCaracteristicsDTO.fromJson(Map<String, dynamic> json) =
      _$ParkingCaracteristicsDTOImpl.fromJson;

  @override
  ParkingSideDTO get parkingSide;
  @override
  ParkingTypeDTO get parkingType;
  @override
  int get number;
  @override
  @JsonKey(ignore: true)
  _$$ParkingCaracteristicsDTOImplCopyWith<_$ParkingCaracteristicsDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpeedCaracteristicsDTO _$SpeedCaracteristicsDTOFromJson(
    Map<String, dynamic> json) {
  return _SpeedCaracteristicsDTO.fromJson(json);
}

/// @nodoc
mixin _$SpeedCaracteristicsDTO {
  bool get walkArea => throw _privateConstructorUsedError;
  bool get meetArea => throw _privateConstructorUsedError;
  bool get kmh30Area => throw _privateConstructorUsedError;
  bool get kmh30 => throw _privateConstructorUsedError;
  bool get kmh50 => throw _privateConstructorUsedError;
  bool get kmh70 => throw _privateConstructorUsedError;
  bool get kmh80 => throw _privateConstructorUsedError;
  bool get kmh90AndMore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeedCaracteristicsDTOCopyWith<SpeedCaracteristicsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeedCaracteristicsDTOCopyWith<$Res> {
  factory $SpeedCaracteristicsDTOCopyWith(SpeedCaracteristicsDTO value,
          $Res Function(SpeedCaracteristicsDTO) then) =
      _$SpeedCaracteristicsDTOCopyWithImpl<$Res, SpeedCaracteristicsDTO>;
  @useResult
  $Res call(
      {bool walkArea,
      bool meetArea,
      bool kmh30Area,
      bool kmh30,
      bool kmh50,
      bool kmh70,
      bool kmh80,
      bool kmh90AndMore});
}

/// @nodoc
class _$SpeedCaracteristicsDTOCopyWithImpl<$Res,
        $Val extends SpeedCaracteristicsDTO>
    implements $SpeedCaracteristicsDTOCopyWith<$Res> {
  _$SpeedCaracteristicsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walkArea = null,
    Object? meetArea = null,
    Object? kmh30Area = null,
    Object? kmh30 = null,
    Object? kmh50 = null,
    Object? kmh70 = null,
    Object? kmh80 = null,
    Object? kmh90AndMore = null,
  }) {
    return _then(_value.copyWith(
      walkArea: null == walkArea
          ? _value.walkArea
          : walkArea // ignore: cast_nullable_to_non_nullable
              as bool,
      meetArea: null == meetArea
          ? _value.meetArea
          : meetArea // ignore: cast_nullable_to_non_nullable
              as bool,
      kmh30Area: null == kmh30Area
          ? _value.kmh30Area
          : kmh30Area // ignore: cast_nullable_to_non_nullable
              as bool,
      kmh30: null == kmh30
          ? _value.kmh30
          : kmh30 // ignore: cast_nullable_to_non_nullable
              as bool,
      kmh50: null == kmh50
          ? _value.kmh50
          : kmh50 // ignore: cast_nullable_to_non_nullable
              as bool,
      kmh70: null == kmh70
          ? _value.kmh70
          : kmh70 // ignore: cast_nullable_to_non_nullable
              as bool,
      kmh80: null == kmh80
          ? _value.kmh80
          : kmh80 // ignore: cast_nullable_to_non_nullable
              as bool,
      kmh90AndMore: null == kmh90AndMore
          ? _value.kmh90AndMore
          : kmh90AndMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeedCaracteristicsDTOImplCopyWith<$Res>
    implements $SpeedCaracteristicsDTOCopyWith<$Res> {
  factory _$$SpeedCaracteristicsDTOImplCopyWith(
          _$SpeedCaracteristicsDTOImpl value,
          $Res Function(_$SpeedCaracteristicsDTOImpl) then) =
      __$$SpeedCaracteristicsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool walkArea,
      bool meetArea,
      bool kmh30Area,
      bool kmh30,
      bool kmh50,
      bool kmh70,
      bool kmh80,
      bool kmh90AndMore});
}

/// @nodoc
class __$$SpeedCaracteristicsDTOImplCopyWithImpl<$Res>
    extends _$SpeedCaracteristicsDTOCopyWithImpl<$Res,
        _$SpeedCaracteristicsDTOImpl>
    implements _$$SpeedCaracteristicsDTOImplCopyWith<$Res> {
  __$$SpeedCaracteristicsDTOImplCopyWithImpl(
      _$SpeedCaracteristicsDTOImpl _value,
      $Res Function(_$SpeedCaracteristicsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walkArea = null,
    Object? meetArea = null,
    Object? kmh30Area = null,
    Object? kmh30 = null,
    Object? kmh50 = null,
    Object? kmh70 = null,
    Object? kmh80 = null,
    Object? kmh90AndMore = null,
  }) {
    return _then(_$SpeedCaracteristicsDTOImpl(
      walkArea: null == walkArea
          ? _value.walkArea
          : walkArea // ignore: cast_nullable_to_non_nullable
              as bool,
      meetArea: null == meetArea
          ? _value.meetArea
          : meetArea // ignore: cast_nullable_to_non_nullable
              as bool,
      kmh30Area: null == kmh30Area
          ? _value.kmh30Area
          : kmh30Area // ignore: cast_nullable_to_non_nullable
              as bool,
      kmh30: null == kmh30
          ? _value.kmh30
          : kmh30 // ignore: cast_nullable_to_non_nullable
              as bool,
      kmh50: null == kmh50
          ? _value.kmh50
          : kmh50 // ignore: cast_nullable_to_non_nullable
              as bool,
      kmh70: null == kmh70
          ? _value.kmh70
          : kmh70 // ignore: cast_nullable_to_non_nullable
              as bool,
      kmh80: null == kmh80
          ? _value.kmh80
          : kmh80 // ignore: cast_nullable_to_non_nullable
              as bool,
      kmh90AndMore: null == kmh90AndMore
          ? _value.kmh90AndMore
          : kmh90AndMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeedCaracteristicsDTOImpl implements _SpeedCaracteristicsDTO {
  const _$SpeedCaracteristicsDTOImpl(
      {required this.walkArea,
      required this.meetArea,
      required this.kmh30Area,
      required this.kmh30,
      required this.kmh50,
      required this.kmh70,
      required this.kmh80,
      required this.kmh90AndMore});

  factory _$SpeedCaracteristicsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeedCaracteristicsDTOImplFromJson(json);

  @override
  final bool walkArea;
  @override
  final bool meetArea;
  @override
  final bool kmh30Area;
  @override
  final bool kmh30;
  @override
  final bool kmh50;
  @override
  final bool kmh70;
  @override
  final bool kmh80;
  @override
  final bool kmh90AndMore;

  @override
  String toString() {
    return 'SpeedCaracteristicsDTO(walkArea: $walkArea, meetArea: $meetArea, kmh30Area: $kmh30Area, kmh30: $kmh30, kmh50: $kmh50, kmh70: $kmh70, kmh80: $kmh80, kmh90AndMore: $kmh90AndMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeedCaracteristicsDTOImpl &&
            (identical(other.walkArea, walkArea) ||
                other.walkArea == walkArea) &&
            (identical(other.meetArea, meetArea) ||
                other.meetArea == meetArea) &&
            (identical(other.kmh30Area, kmh30Area) ||
                other.kmh30Area == kmh30Area) &&
            (identical(other.kmh30, kmh30) || other.kmh30 == kmh30) &&
            (identical(other.kmh50, kmh50) || other.kmh50 == kmh50) &&
            (identical(other.kmh70, kmh70) || other.kmh70 == kmh70) &&
            (identical(other.kmh80, kmh80) || other.kmh80 == kmh80) &&
            (identical(other.kmh90AndMore, kmh90AndMore) ||
                other.kmh90AndMore == kmh90AndMore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, walkArea, meetArea, kmh30Area,
      kmh30, kmh50, kmh70, kmh80, kmh90AndMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeedCaracteristicsDTOImplCopyWith<_$SpeedCaracteristicsDTOImpl>
      get copyWith => __$$SpeedCaracteristicsDTOImplCopyWithImpl<
          _$SpeedCaracteristicsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeedCaracteristicsDTOImplToJson(
      this,
    );
  }
}

abstract class _SpeedCaracteristicsDTO implements SpeedCaracteristicsDTO {
  const factory _SpeedCaracteristicsDTO(
      {required final bool walkArea,
      required final bool meetArea,
      required final bool kmh30Area,
      required final bool kmh30,
      required final bool kmh50,
      required final bool kmh70,
      required final bool kmh80,
      required final bool kmh90AndMore}) = _$SpeedCaracteristicsDTOImpl;

  factory _SpeedCaracteristicsDTO.fromJson(Map<String, dynamic> json) =
      _$SpeedCaracteristicsDTOImpl.fromJson;

  @override
  bool get walkArea;
  @override
  bool get meetArea;
  @override
  bool get kmh30Area;
  @override
  bool get kmh30;
  @override
  bool get kmh50;
  @override
  bool get kmh70;
  @override
  bool get kmh80;
  @override
  bool get kmh90AndMore;
  @override
  @JsonKey(ignore: true)
  _$$SpeedCaracteristicsDTOImplCopyWith<_$SpeedCaracteristicsDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
