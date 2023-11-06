import 'package:dartz/dartz.dart';

extension EitherX<L, R> on Either<L, R> {
  R getRight() => (this as Right).value as R;
  L getLeft() => (this as Left).value as L;

  // String getFailureMessage() => (getLeft() as Failure).message;

  Future<Either<L, R2>> bindFuture<R2>(Function1<R, Future<Either<L, R2>>> f) =>
      fold(
        (l) => Future.microtask(() => left(l)),
        (R r) => f(r),
      );

  Future<Either<L, R2>> mapFuture<R2>(Function1<R, Future<R2>> f) => fold(
        (l) => Future.microtask(() => left(l)),
        (r) => f(r).then(right),
      );
}

extension FutureEitherX<L, R> on Future<Either<L, R>> {
  Future<Either<L, R2>> bindFuture<R2>(Function1<R, Future<Either<L, R2>>> f) =>
      then(
        (value) => value.fold(
          (l) => Future.microtask(() => left(l)),
          (R r) => f(r),
        ),
      );

  Future<Either<L, R2>> bind<R2>(Function1<R, Either<L, R2>> f) => then(
        (value) => value.fold(
          left,
          f,
        ),
      );

  Future<B> fold<B>(
    B Function(L l) ifLeft,
    B Function(R r) ifRight,
  ) =>
      then(
        (value) => value.fold(
          ifLeft,
          ifRight,
        ),
      );

  Future<Either<L, R2>> mapFuture<R2>(Function1<R, Future<R2>> f) => then(
        (value) => value.fold(
          left,
          (r) => f(r).then(right),
        ),
      );

  Future<Either<L, R2>> map<R2>(Function1<R, R2> f) => then(
        (value) => value.fold(
          left,
          (r) => right(f(r)),
        ),
      );
}
