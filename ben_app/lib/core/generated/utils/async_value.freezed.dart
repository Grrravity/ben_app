// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../utils/async_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AsyncValue<DataT, MetadataT> {
  DataT? get data => throw _privateConstructorUsedError;
  MetadataT? get metadata => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataT? data, MetadataT? metadata) loading,
    required TResult Function(DataT data, MetadataT? metadata) loaded,
    required TResult Function(DataT? data, MetadataT? metadata, Failure failure)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataT? data, MetadataT? metadata)? loading,
    TResult? Function(DataT data, MetadataT? metadata)? loaded,
    TResult? Function(DataT? data, MetadataT? metadata, Failure failure)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataT? data, MetadataT? metadata)? loading,
    TResult Function(DataT data, MetadataT? metadata)? loaded,
    TResult Function(DataT? data, MetadataT? metadata, Failure failure)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncValueLoading<DataT, MetadataT> value)
        loading,
    required TResult Function(AsyncValueLoaded<DataT, MetadataT> value) loaded,
    required TResult Function(AsyncValueError<DataT, MetadataT> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncValueLoading<DataT, MetadataT> value)? loading,
    TResult? Function(AsyncValueLoaded<DataT, MetadataT> value)? loaded,
    TResult? Function(AsyncValueError<DataT, MetadataT> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncValueLoading<DataT, MetadataT> value)? loading,
    TResult Function(AsyncValueLoaded<DataT, MetadataT> value)? loaded,
    TResult Function(AsyncValueError<DataT, MetadataT> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AsyncValueCopyWith<DataT, MetadataT, AsyncValue<DataT, MetadataT>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncValueCopyWith<DataT, MetadataT, $Res> {
  factory $AsyncValueCopyWith(AsyncValue<DataT, MetadataT> value,
          $Res Function(AsyncValue<DataT, MetadataT>) then) =
      _$AsyncValueCopyWithImpl<DataT, MetadataT, $Res,
          AsyncValue<DataT, MetadataT>>;
  @useResult
  $Res call({MetadataT? metadata});
}

/// @nodoc
class _$AsyncValueCopyWithImpl<DataT, MetadataT, $Res,
        $Val extends AsyncValue<DataT, MetadataT>>
    implements $AsyncValueCopyWith<DataT, MetadataT, $Res> {
  _$AsyncValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetadataT?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AsyncValueLoadingImplCopyWith<DataT, MetadataT, $Res>
    implements $AsyncValueCopyWith<DataT, MetadataT, $Res> {
  factory _$$AsyncValueLoadingImplCopyWith(
          _$AsyncValueLoadingImpl<DataT, MetadataT> value,
          $Res Function(_$AsyncValueLoadingImpl<DataT, MetadataT>) then) =
      __$$AsyncValueLoadingImplCopyWithImpl<DataT, MetadataT, $Res>;
  @override
  @useResult
  $Res call({DataT? data, MetadataT? metadata});
}

/// @nodoc
class __$$AsyncValueLoadingImplCopyWithImpl<DataT, MetadataT, $Res>
    extends _$AsyncValueCopyWithImpl<DataT, MetadataT, $Res,
        _$AsyncValueLoadingImpl<DataT, MetadataT>>
    implements _$$AsyncValueLoadingImplCopyWith<DataT, MetadataT, $Res> {
  __$$AsyncValueLoadingImplCopyWithImpl(
      _$AsyncValueLoadingImpl<DataT, MetadataT> _value,
      $Res Function(_$AsyncValueLoadingImpl<DataT, MetadataT>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$AsyncValueLoadingImpl<DataT, MetadataT>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataT?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetadataT?,
    ));
  }
}

/// @nodoc

class _$AsyncValueLoadingImpl<DataT, MetadataT>
    extends AsyncValueLoading<DataT, MetadataT> {
  const _$AsyncValueLoadingImpl({this.data, this.metadata}) : super._();

  @override
  final DataT? data;
  @override
  final MetadataT? metadata;

  @override
  String toString() {
    return 'AsyncValue<$DataT, $MetadataT>.loading(data: $data, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncValueLoadingImpl<DataT, MetadataT> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncValueLoadingImplCopyWith<DataT, MetadataT,
          _$AsyncValueLoadingImpl<DataT, MetadataT>>
      get copyWith => __$$AsyncValueLoadingImplCopyWithImpl<DataT, MetadataT,
          _$AsyncValueLoadingImpl<DataT, MetadataT>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataT? data, MetadataT? metadata) loading,
    required TResult Function(DataT data, MetadataT? metadata) loaded,
    required TResult Function(DataT? data, MetadataT? metadata, Failure failure)
        failure,
  }) {
    return loading(data, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataT? data, MetadataT? metadata)? loading,
    TResult? Function(DataT data, MetadataT? metadata)? loaded,
    TResult? Function(DataT? data, MetadataT? metadata, Failure failure)?
        failure,
  }) {
    return loading?.call(data, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataT? data, MetadataT? metadata)? loading,
    TResult Function(DataT data, MetadataT? metadata)? loaded,
    TResult Function(DataT? data, MetadataT? metadata, Failure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncValueLoading<DataT, MetadataT> value)
        loading,
    required TResult Function(AsyncValueLoaded<DataT, MetadataT> value) loaded,
    required TResult Function(AsyncValueError<DataT, MetadataT> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncValueLoading<DataT, MetadataT> value)? loading,
    TResult? Function(AsyncValueLoaded<DataT, MetadataT> value)? loaded,
    TResult? Function(AsyncValueError<DataT, MetadataT> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncValueLoading<DataT, MetadataT> value)? loading,
    TResult Function(AsyncValueLoaded<DataT, MetadataT> value)? loaded,
    TResult Function(AsyncValueError<DataT, MetadataT> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AsyncValueLoading<DataT, MetadataT>
    extends AsyncValue<DataT, MetadataT> {
  const factory AsyncValueLoading(
      {final DataT? data,
      final MetadataT? metadata}) = _$AsyncValueLoadingImpl<DataT, MetadataT>;
  const AsyncValueLoading._() : super._();

  @override
  DataT? get data;
  @override
  MetadataT? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AsyncValueLoadingImplCopyWith<DataT, MetadataT,
          _$AsyncValueLoadingImpl<DataT, MetadataT>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncValueLoadedImplCopyWith<DataT, MetadataT, $Res>
    implements $AsyncValueCopyWith<DataT, MetadataT, $Res> {
  factory _$$AsyncValueLoadedImplCopyWith(
          _$AsyncValueLoadedImpl<DataT, MetadataT> value,
          $Res Function(_$AsyncValueLoadedImpl<DataT, MetadataT>) then) =
      __$$AsyncValueLoadedImplCopyWithImpl<DataT, MetadataT, $Res>;
  @override
  @useResult
  $Res call({DataT data, MetadataT? metadata});
}

/// @nodoc
class __$$AsyncValueLoadedImplCopyWithImpl<DataT, MetadataT, $Res>
    extends _$AsyncValueCopyWithImpl<DataT, MetadataT, $Res,
        _$AsyncValueLoadedImpl<DataT, MetadataT>>
    implements _$$AsyncValueLoadedImplCopyWith<DataT, MetadataT, $Res> {
  __$$AsyncValueLoadedImplCopyWithImpl(
      _$AsyncValueLoadedImpl<DataT, MetadataT> _value,
      $Res Function(_$AsyncValueLoadedImpl<DataT, MetadataT>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$AsyncValueLoadedImpl<DataT, MetadataT>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataT,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetadataT?,
    ));
  }
}

/// @nodoc

class _$AsyncValueLoadedImpl<DataT, MetadataT>
    extends AsyncValueLoaded<DataT, MetadataT> {
  const _$AsyncValueLoadedImpl({required this.data, this.metadata}) : super._();

  @override
  final DataT data;
  @override
  final MetadataT? metadata;

  @override
  String toString() {
    return 'AsyncValue<$DataT, $MetadataT>.loaded(data: $data, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncValueLoadedImpl<DataT, MetadataT> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncValueLoadedImplCopyWith<DataT, MetadataT,
          _$AsyncValueLoadedImpl<DataT, MetadataT>>
      get copyWith => __$$AsyncValueLoadedImplCopyWithImpl<DataT, MetadataT,
          _$AsyncValueLoadedImpl<DataT, MetadataT>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataT? data, MetadataT? metadata) loading,
    required TResult Function(DataT data, MetadataT? metadata) loaded,
    required TResult Function(DataT? data, MetadataT? metadata, Failure failure)
        failure,
  }) {
    return loaded(data, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataT? data, MetadataT? metadata)? loading,
    TResult? Function(DataT data, MetadataT? metadata)? loaded,
    TResult? Function(DataT? data, MetadataT? metadata, Failure failure)?
        failure,
  }) {
    return loaded?.call(data, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataT? data, MetadataT? metadata)? loading,
    TResult Function(DataT data, MetadataT? metadata)? loaded,
    TResult Function(DataT? data, MetadataT? metadata, Failure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncValueLoading<DataT, MetadataT> value)
        loading,
    required TResult Function(AsyncValueLoaded<DataT, MetadataT> value) loaded,
    required TResult Function(AsyncValueError<DataT, MetadataT> value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncValueLoading<DataT, MetadataT> value)? loading,
    TResult? Function(AsyncValueLoaded<DataT, MetadataT> value)? loaded,
    TResult? Function(AsyncValueError<DataT, MetadataT> value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncValueLoading<DataT, MetadataT> value)? loading,
    TResult Function(AsyncValueLoaded<DataT, MetadataT> value)? loaded,
    TResult Function(AsyncValueError<DataT, MetadataT> value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AsyncValueLoaded<DataT, MetadataT>
    extends AsyncValue<DataT, MetadataT> {
  const factory AsyncValueLoaded(
      {required final DataT data,
      final MetadataT? metadata}) = _$AsyncValueLoadedImpl<DataT, MetadataT>;
  const AsyncValueLoaded._() : super._();

  @override
  DataT get data;
  @override
  MetadataT? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AsyncValueLoadedImplCopyWith<DataT, MetadataT,
          _$AsyncValueLoadedImpl<DataT, MetadataT>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncValueErrorImplCopyWith<DataT, MetadataT, $Res>
    implements $AsyncValueCopyWith<DataT, MetadataT, $Res> {
  factory _$$AsyncValueErrorImplCopyWith(
          _$AsyncValueErrorImpl<DataT, MetadataT> value,
          $Res Function(_$AsyncValueErrorImpl<DataT, MetadataT>) then) =
      __$$AsyncValueErrorImplCopyWithImpl<DataT, MetadataT, $Res>;
  @override
  @useResult
  $Res call({DataT? data, MetadataT? metadata, Failure failure});
}

/// @nodoc
class __$$AsyncValueErrorImplCopyWithImpl<DataT, MetadataT, $Res>
    extends _$AsyncValueCopyWithImpl<DataT, MetadataT, $Res,
        _$AsyncValueErrorImpl<DataT, MetadataT>>
    implements _$$AsyncValueErrorImplCopyWith<DataT, MetadataT, $Res> {
  __$$AsyncValueErrorImplCopyWithImpl(
      _$AsyncValueErrorImpl<DataT, MetadataT> _value,
      $Res Function(_$AsyncValueErrorImpl<DataT, MetadataT>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? metadata = freezed,
    Object? failure = null,
  }) {
    return _then(_$AsyncValueErrorImpl<DataT, MetadataT>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataT?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetadataT?,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AsyncValueErrorImpl<DataT, MetadataT>
    extends AsyncValueError<DataT, MetadataT> {
  const _$AsyncValueErrorImpl({this.data, this.metadata, required this.failure})
      : super._();

  @override
  final DataT? data;
  @override
  final MetadataT? metadata;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'AsyncValue<$DataT, $MetadataT>.failure(data: $data, metadata: $metadata, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncValueErrorImpl<DataT, MetadataT> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(metadata),
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncValueErrorImplCopyWith<DataT, MetadataT,
          _$AsyncValueErrorImpl<DataT, MetadataT>>
      get copyWith => __$$AsyncValueErrorImplCopyWithImpl<DataT, MetadataT,
          _$AsyncValueErrorImpl<DataT, MetadataT>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataT? data, MetadataT? metadata) loading,
    required TResult Function(DataT data, MetadataT? metadata) loaded,
    required TResult Function(DataT? data, MetadataT? metadata, Failure failure)
        failure,
  }) {
    return failure(data, metadata, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataT? data, MetadataT? metadata)? loading,
    TResult? Function(DataT data, MetadataT? metadata)? loaded,
    TResult? Function(DataT? data, MetadataT? metadata, Failure failure)?
        failure,
  }) {
    return failure?.call(data, metadata, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataT? data, MetadataT? metadata)? loading,
    TResult Function(DataT data, MetadataT? metadata)? loaded,
    TResult Function(DataT? data, MetadataT? metadata, Failure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(data, metadata, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncValueLoading<DataT, MetadataT> value)
        loading,
    required TResult Function(AsyncValueLoaded<DataT, MetadataT> value) loaded,
    required TResult Function(AsyncValueError<DataT, MetadataT> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncValueLoading<DataT, MetadataT> value)? loading,
    TResult? Function(AsyncValueLoaded<DataT, MetadataT> value)? loaded,
    TResult? Function(AsyncValueError<DataT, MetadataT> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncValueLoading<DataT, MetadataT> value)? loading,
    TResult Function(AsyncValueLoaded<DataT, MetadataT> value)? loaded,
    TResult Function(AsyncValueError<DataT, MetadataT> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AsyncValueError<DataT, MetadataT>
    extends AsyncValue<DataT, MetadataT> {
  const factory AsyncValueError(
          {final DataT? data,
          final MetadataT? metadata,
          required final Failure failure}) =
      _$AsyncValueErrorImpl<DataT, MetadataT>;
  const AsyncValueError._() : super._();

  @override
  DataT? get data;
  @override
  MetadataT? get metadata;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$AsyncValueErrorImplCopyWith<DataT, MetadataT,
          _$AsyncValueErrorImpl<DataT, MetadataT>>
      get copyWith => throw _privateConstructorUsedError;
}
