import 'dart:async';

import 'package:ben_app/core/error/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/utils/async_value.freezed.dart';

@freezed
class AsyncValue<DataT, MetadataT> with _$AsyncValue<DataT, MetadataT> {
  const AsyncValue._();

  const factory AsyncValue.loading({
    DataT? data,
    MetadataT? metadata,
  }) = AsyncValueLoading;

  const factory AsyncValue.loaded({
    required DataT data,
    MetadataT? metadata,
  }) = AsyncValueLoaded;

  const factory AsyncValue.failure({
    DataT? data,
    MetadataT? metadata,
    required Failure failure,
  }) = AsyncValueError;

  AsyncValueLoaded<DataT, MetadataT>? get asLoaded => maybeMap(
        loaded: (value) => value,
        orElse: () => null,
      );

  AsyncValueLoading<DataT, MetadataT> get toLoading => map(
        loading: (loading) => loading,
        loaded: (loaded) => AsyncValueLoading(
          data: loaded.data,
          metadata: loaded.metadata,
        ),
        failure: (value) => AsyncValueLoading(
          data: value.data,
          metadata: value.metadata,
        ),
      );

  AsyncValueError<DataT, MetadataT> toFailure(Failure failure) =>
      AsyncValueError(
        data: data,
        metadata: metadata,
        failure: failure,
      );
}

extension AsyncValueX<DataT, MetadataT> on AsyncValue<DataT, MetadataT> {
  bool get isLoading => this is AsyncValueLoading;

  bool get hasValue => data != null;

  bool get isFailure => this.failure != null;
  // DataT? get value => data;

  Object? get failure => map(
        loading: (loading) => null,
        loaded: (loaded) => null,
        failure: (failure) => failure.failure,
      );

  StackTrace? get stackTrace => map(
        loading: (loading) => null,
        loaded: (loaded) => null,
        failure: (failure) => failure.stackTrace,
      );

  DataT get dataOrThrow => maybeMap(
        loaded: (loaded) => loaded.data,
        orElse: () => throw Exception(
          'Bad state, expected loaded but got $this',
        ),
      );
}

extension LoadedAsyncValueX<DataT, MetadataT>
    on AsyncValueLoaded<DataT, MetadataT> {
  FutureOr<AsyncValueLoaded<DataT, MetadataT>> copyWithData(
    FutureOr<DataT> Function(
      DataT data,
    ) transform,
  ) async =>
      copyWith(data: await transform(data));
}
