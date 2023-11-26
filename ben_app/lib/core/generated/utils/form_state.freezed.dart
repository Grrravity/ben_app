// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../utils/form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormBlocState<DataT> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure failure) loadFailed,
    required TResult Function(DataT data, Failure? failure, bool isSubmitting,
            bool submitted, bool canBeSubmitted)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Failure failure)? loadFailed,
    TResult? Function(DataT data, Failure? failure, bool isSubmitting,
            bool submitted, bool canBeSubmitted)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? loadFailed,
    TResult Function(DataT data, Failure? failure, bool isSubmitting,
            bool submitted, bool canBeSubmitted)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingForm<DataT> value) loading,
    required TResult Function(LoadFailedForm<DataT> value) loadFailed,
    required TResult Function(LoadedForm<DataT> value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingForm<DataT> value)? loading,
    TResult? Function(LoadFailedForm<DataT> value)? loadFailed,
    TResult? Function(LoadedForm<DataT> value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingForm<DataT> value)? loading,
    TResult Function(LoadFailedForm<DataT> value)? loadFailed,
    TResult Function(LoadedForm<DataT> value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormBlocStateCopyWith<DataT, $Res> {
  factory $FormBlocStateCopyWith(FormBlocState<DataT> value,
          $Res Function(FormBlocState<DataT>) then) =
      _$FormBlocStateCopyWithImpl<DataT, $Res, FormBlocState<DataT>>;
}

/// @nodoc
class _$FormBlocStateCopyWithImpl<DataT, $Res,
        $Val extends FormBlocState<DataT>>
    implements $FormBlocStateCopyWith<DataT, $Res> {
  _$FormBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingFormImplCopyWith<DataT, $Res> {
  factory _$$LoadingFormImplCopyWith(_$LoadingFormImpl<DataT> value,
          $Res Function(_$LoadingFormImpl<DataT>) then) =
      __$$LoadingFormImplCopyWithImpl<DataT, $Res>;
}

/// @nodoc
class __$$LoadingFormImplCopyWithImpl<DataT, $Res>
    extends _$FormBlocStateCopyWithImpl<DataT, $Res, _$LoadingFormImpl<DataT>>
    implements _$$LoadingFormImplCopyWith<DataT, $Res> {
  __$$LoadingFormImplCopyWithImpl(_$LoadingFormImpl<DataT> _value,
      $Res Function(_$LoadingFormImpl<DataT>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingFormImpl<DataT> extends LoadingForm<DataT> {
  const _$LoadingFormImpl() : super._();

  @override
  String toString() {
    return 'FormBlocState<$DataT>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingFormImpl<DataT>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure failure) loadFailed,
    required TResult Function(DataT data, Failure? failure, bool isSubmitting,
            bool submitted, bool canBeSubmitted)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Failure failure)? loadFailed,
    TResult? Function(DataT data, Failure? failure, bool isSubmitting,
            bool submitted, bool canBeSubmitted)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? loadFailed,
    TResult Function(DataT data, Failure? failure, bool isSubmitting,
            bool submitted, bool canBeSubmitted)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingForm<DataT> value) loading,
    required TResult Function(LoadFailedForm<DataT> value) loadFailed,
    required TResult Function(LoadedForm<DataT> value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingForm<DataT> value)? loading,
    TResult? Function(LoadFailedForm<DataT> value)? loadFailed,
    TResult? Function(LoadedForm<DataT> value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingForm<DataT> value)? loading,
    TResult Function(LoadFailedForm<DataT> value)? loadFailed,
    TResult Function(LoadedForm<DataT> value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingForm<DataT> extends FormBlocState<DataT> {
  const factory LoadingForm() = _$LoadingFormImpl<DataT>;
  const LoadingForm._() : super._();
}

/// @nodoc
abstract class _$$LoadFailedFormImplCopyWith<DataT, $Res> {
  factory _$$LoadFailedFormImplCopyWith(_$LoadFailedFormImpl<DataT> value,
          $Res Function(_$LoadFailedFormImpl<DataT>) then) =
      __$$LoadFailedFormImplCopyWithImpl<DataT, $Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$LoadFailedFormImplCopyWithImpl<DataT, $Res>
    extends _$FormBlocStateCopyWithImpl<DataT, $Res,
        _$LoadFailedFormImpl<DataT>>
    implements _$$LoadFailedFormImplCopyWith<DataT, $Res> {
  __$$LoadFailedFormImplCopyWithImpl(_$LoadFailedFormImpl<DataT> _value,
      $Res Function(_$LoadFailedFormImpl<DataT>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoadFailedFormImpl<DataT>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$LoadFailedFormImpl<DataT> extends LoadFailedForm<DataT> {
  const _$LoadFailedFormImpl(this.failure) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FormBlocState<$DataT>.loadFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailedFormImpl<DataT> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailedFormImplCopyWith<DataT, _$LoadFailedFormImpl<DataT>>
      get copyWith => __$$LoadFailedFormImplCopyWithImpl<DataT,
          _$LoadFailedFormImpl<DataT>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure failure) loadFailed,
    required TResult Function(DataT data, Failure? failure, bool isSubmitting,
            bool submitted, bool canBeSubmitted)
        loaded,
  }) {
    return loadFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Failure failure)? loadFailed,
    TResult? Function(DataT data, Failure? failure, bool isSubmitting,
            bool submitted, bool canBeSubmitted)?
        loaded,
  }) {
    return loadFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? loadFailed,
    TResult Function(DataT data, Failure? failure, bool isSubmitting,
            bool submitted, bool canBeSubmitted)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingForm<DataT> value) loading,
    required TResult Function(LoadFailedForm<DataT> value) loadFailed,
    required TResult Function(LoadedForm<DataT> value) loaded,
  }) {
    return loadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingForm<DataT> value)? loading,
    TResult? Function(LoadFailedForm<DataT> value)? loadFailed,
    TResult? Function(LoadedForm<DataT> value)? loaded,
  }) {
    return loadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingForm<DataT> value)? loading,
    TResult Function(LoadFailedForm<DataT> value)? loadFailed,
    TResult Function(LoadedForm<DataT> value)? loaded,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(this);
    }
    return orElse();
  }
}

abstract class LoadFailedForm<DataT> extends FormBlocState<DataT> {
  const factory LoadFailedForm(final Failure failure) =
      _$LoadFailedFormImpl<DataT>;
  const LoadFailedForm._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$LoadFailedFormImplCopyWith<DataT, _$LoadFailedFormImpl<DataT>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedFormImplCopyWith<DataT, $Res> {
  factory _$$LoadedFormImplCopyWith(_$LoadedFormImpl<DataT> value,
          $Res Function(_$LoadedFormImpl<DataT>) then) =
      __$$LoadedFormImplCopyWithImpl<DataT, $Res>;
  @useResult
  $Res call(
      {DataT data,
      Failure? failure,
      bool isSubmitting,
      bool submitted,
      bool canBeSubmitted});
}

/// @nodoc
class __$$LoadedFormImplCopyWithImpl<DataT, $Res>
    extends _$FormBlocStateCopyWithImpl<DataT, $Res, _$LoadedFormImpl<DataT>>
    implements _$$LoadedFormImplCopyWith<DataT, $Res> {
  __$$LoadedFormImplCopyWithImpl(_$LoadedFormImpl<DataT> _value,
      $Res Function(_$LoadedFormImpl<DataT>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? failure = freezed,
    Object? isSubmitting = null,
    Object? submitted = null,
    Object? canBeSubmitted = null,
  }) {
    return _then(_$LoadedFormImpl<DataT>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataT,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      canBeSubmitted: null == canBeSubmitted
          ? _value.canBeSubmitted
          : canBeSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedFormImpl<DataT> extends LoadedForm<DataT> {
  const _$LoadedFormImpl(
      {required this.data,
      this.failure,
      this.isSubmitting = false,
      this.submitted = false,
      required this.canBeSubmitted})
      : super._();

  @override
  final DataT data;
  @override
  final Failure? failure;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool submitted;
  @override
  final bool canBeSubmitted;

  @override
  String toString() {
    return 'FormBlocState<$DataT>.loaded(data: $data, failure: $failure, isSubmitting: $isSubmitting, submitted: $submitted, canBeSubmitted: $canBeSubmitted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedFormImpl<DataT> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.canBeSubmitted, canBeSubmitted) ||
                other.canBeSubmitted == canBeSubmitted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      failure,
      isSubmitting,
      submitted,
      canBeSubmitted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedFormImplCopyWith<DataT, _$LoadedFormImpl<DataT>> get copyWith =>
      __$$LoadedFormImplCopyWithImpl<DataT, _$LoadedFormImpl<DataT>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure failure) loadFailed,
    required TResult Function(DataT data, Failure? failure, bool isSubmitting,
            bool submitted, bool canBeSubmitted)
        loaded,
  }) {
    return loaded(data, failure, isSubmitting, submitted, canBeSubmitted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Failure failure)? loadFailed,
    TResult? Function(DataT data, Failure? failure, bool isSubmitting,
            bool submitted, bool canBeSubmitted)?
        loaded,
  }) {
    return loaded?.call(data, failure, isSubmitting, submitted, canBeSubmitted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? loadFailed,
    TResult Function(DataT data, Failure? failure, bool isSubmitting,
            bool submitted, bool canBeSubmitted)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, failure, isSubmitting, submitted, canBeSubmitted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingForm<DataT> value) loading,
    required TResult Function(LoadFailedForm<DataT> value) loadFailed,
    required TResult Function(LoadedForm<DataT> value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingForm<DataT> value)? loading,
    TResult? Function(LoadFailedForm<DataT> value)? loadFailed,
    TResult? Function(LoadedForm<DataT> value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingForm<DataT> value)? loading,
    TResult Function(LoadFailedForm<DataT> value)? loadFailed,
    TResult Function(LoadedForm<DataT> value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedForm<DataT> extends FormBlocState<DataT> {
  const factory LoadedForm(
      {required final DataT data,
      final Failure? failure,
      final bool isSubmitting,
      final bool submitted,
      required final bool canBeSubmitted}) = _$LoadedFormImpl<DataT>;
  const LoadedForm._() : super._();

  DataT get data;
  Failure? get failure;
  bool get isSubmitting;
  bool get submitted;
  bool get canBeSubmitted;
  @JsonKey(ignore: true)
  _$$LoadedFormImplCopyWith<DataT, _$LoadedFormImpl<DataT>> get copyWith =>
      throw _privateConstructorUsedError;
}
