import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ben_app/core/error/failure.dart';

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
}

extension AsyncValueX<DataT, MetadataT> on AsyncValue<DataT, MetadataT> {
  bool get isLoading => this is AsyncValueLoading;

  bool get hasValue => data != null;

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
}
