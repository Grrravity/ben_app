import 'package:ben_app/core/utils/logger.dart';
import 'package:dartz/dartz.dart';

enum Failure implements Exception {
  authentication,
  connectivity,
  other,
  unauthorized,
  passwordsNotIdenticals,
  passwordInvalid,
  invalidCommand,
  elementNotFound,
  emailNotValid,
  textIsEmpty,
  formIsInvalid,
  notVerified,
  expiredSession,
  widgetTreeError;

  const Failure();

  static Future<Either<Failure, T>> guard<T>(
    Future<T> Function() call,
  ) async {
    try {
      final result = await call();
      return right(result);
    } on Failure catch (e) {
      return left(e);
    } on Exception catch (e, s) {
      Logger.e(e, error: e, stackTrace: s);
      return left(Failure.other);
    } catch (e, s) {
      Logger.e(e, error: e, stackTrace: s);
      return left(Failure.other);
    }
  }

  static Either<Failure, T> guardSync<T>(
    T Function() call,
  ) {
    try {
      final result = call();
      return right(result);
    } on Failure catch (e) {
      return left(e);
    } on Exception catch (e, s) {
      Logger.e(e, error: e, stackTrace: s);
      return left(Failure.other);
    } catch (e, s) {
      Logger.e(e, error: e, stackTrace: s);
      return left(Failure.other);
    }
  }
}
