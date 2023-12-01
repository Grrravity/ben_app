import 'package:ben_app/core/utils/logger.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

enum Failure implements Exception {
  authentication,
  connectivity,
  other,
  canceled,
  unauthorized,
  passwordsNotIdenticals,
  passwordInvalid,
  weakPassword,
  emailAlreadyInUse,
  userNotFound,
  userDisabled,
  invalidAuthCode,
  expiredAuthCode,
  invalidCommand,
  elementNotFound,
  emailNotValid,
  textIsEmpty,
  formIsInvalid,
  notVerified,
  expiredSession,
  fileNameInvalid,
  quotaExeeded,
  invalidUrl,
  invalidState,
  filesInvalid,
  widgetTreeError;

  const Failure();

  static Future<Either<Failure, T>> guard<T>(
    Future<T> Function() call,
  ) async {
    try {
      final result = await call();
      return right(result);
    } on FirebaseException catch (e) {
      Logger.e(e, error: e.message);
      switch (e.code) {
        case 'invalid-argument':
          return left(Failure.invalidCommand);
        case 'invalid-url':
          return left(Failure.invalidUrl);
        case 'canceled':
          return left(Failure.canceled);
        case 'unauthorized':
          return left(Failure.unauthorized);
        case 'unauthenticated':
          return left(Failure.authentication);
        case 'quota-exceeded':
          return left(Failure.quotaExeeded);
        case 'object-not-found':
          return left(Failure.elementNotFound);
        case 'server-file-wrong-size':
        case 'cannot-slice-blob':
        case 'no-default-bucket':
        case 'invalid-event-name':
        case 'invalid-checksum':
        case 'retry-limit-exceeded':
        case 'bucket-not-found':
        case 'project-not-found':
        case 'unknown':
        default:
          return left(Failure.other);
      }
    } on Failure catch (e) {
      Logger.e(e);
      return left(e);
    } on Exception catch (e, s) {
      Logger.e(e, stackTrace: s);
      return left(Failure.other);
    } catch (e, s) {
      Logger.e(e, stackTrace: s);
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
