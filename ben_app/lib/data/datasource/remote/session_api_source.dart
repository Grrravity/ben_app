import 'dart:async';

import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/utils/async_task.dart';
import 'package:ben_app/core/utils/logger.dart';
import 'package:ben_app/data/datasource/local/session_local_source.dart';
import 'package:ben_app/data/model/user_dto.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

abstract class SessionApiSource {
  Stream<UserDto?> get sessionStateStream;

  Future<UserDto> signInWithEmailPassword(Credentials credentials);
  Future<UserDto> signupWithEmailPassword(Credentials credentials);
  Future<UserDto> signInWithMicrosoft();

  Future<bool> requestNewPassword(String email);

  Future<bool> updatePassword({
    required String code,
    required String password,
  });

  Future<UserDto?> getCurrentAuthUser();

  Future<void> logout();

  /// Get current token. Refreshes it automatically if necessary.
}

class SessionApiSourceImpl implements SessionApiSource {
  SessionApiSourceImpl({
    required this.localSource,
    required this.firebaseAuth,
  }) {
    _getUserTask = AsyncTask<UserDto?>(
      name: 'GetToken',
      task: () async {
        return _getCurrentAuthUser();
      },
    );
  }

  final logger = Logger('SessionDataSource');

  // Used to avoid running concurrently multiple times the
  // token renewal operation.
  late final AsyncTask<UserDto?> _getUserTask;
  final SessionLocalSource localSource;
  final FirebaseAuth firebaseAuth;

  @override
  Stream<UserDto?> get sessionStateStream =>
      firebaseAuth.authStateChanges().map((firebaseUser) {
        if (firebaseUser == null) {
          return null;
        }
        return UserDto.fromFirebaseAuthUser(firebaseUser);
      });

  @override
  Future<UserDto> signInWithEmailPassword(
    Credentials credentials,
  ) async {
    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
        email: credentials.login,
        password: credentials.password,
      );

      if (credential.user == null) {
        throw Exception('Sign in failed: The user is null after sign in.');
      }

      return UserDto.fromFirebaseAuthUser(credential.user!);
    } on FirebaseAuthException catch (error) {
      Logger('Firebase login').error(error.message.toString());
      switch (error.code) {
        case 'user-disabled':
          throw Failure.userNotFound;
        case 'user-not-found':
          throw Failure.userNotFound;
        case 'wrong-password':
          throw Failure.passwordInvalid;
        case 'invalid-email':
          throw Failure.emailNotValid;
        default:
          throw Failure.authentication;
      }
    } catch (error) {
      Logger('Firebase login').error(error.toString());
      throw Failure.authentication;
    }
  }

  @override
  Future<UserDto> signInWithMicrosoft() async {
    final microsoftProvider = MicrosoftAuthProvider();
    try {
      UserCredential credential;
      if (kIsWeb) {
        credential = await firebaseAuth.signInWithPopup(microsoftProvider);
      } else {
        credential = await firebaseAuth.signInWithProvider(microsoftProvider);
      }

      if (credential.user == null) {
        throw Failure.authentication;
      }

      return UserDto.fromFirebaseAuthUser(credential.user!);
    } on FirebaseAuthException catch (error) {
      Logger('Microsoft Auth').error(error.message.toString());
      switch (error.code) {
        case 'user-disabled':
          throw Failure.userNotFound;
        case 'weak-password':
          throw Failure.weakPassword;
        case 'email-already-in-use':
          throw Failure.emailAlreadyInUse;
        case 'user-not-found':
          throw Failure.userNotFound;
        case 'wrong-password':
          throw Failure.passwordInvalid;
        case 'invalid-email':
          throw Failure.emailNotValid;
        default:
          throw Failure.authentication;
      }
    } catch (error) {
      Logger('Microsoft Auth').error(error.toString());
      throw Failure.authentication;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await firebaseAuth.signOut();
    } catch (error) {
      Logger('Firebase logout').error(
        error is FirebaseAuthException
            ? error.message.toString()
            : error.toString(),
      );

      throw Failure.other;
    }
  }

  @override
  Future<UserDto> signupWithEmailPassword(Credentials credentials) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: credentials.login,
        password: credentials.password,
      );

      if (credential.user == null) {
        throw Exception('Sign up failed: The user is null after sign up.');
      }

      return UserDto.fromFirebaseAuthUser(credential.user!);
    } on FirebaseAuthException catch (error) {
      Logger('Firebase register').error(error.message.toString());
      switch (error.code) {
        case 'weak-password':
          throw Failure.weakPassword;
        case 'email-already-in-use':
          throw Failure.emailAlreadyInUse;
        case 'invalid-email':
          throw Failure.emailNotValid;
        case 'operation-not-allowed':
          throw Failure.invalidCommand;
        default:
          throw Failure.authentication;
      }
    } catch (error) {
      Logger('Firebase register').error(error.toString());
      throw Failure.authentication;
    }
  }

  @override
  Future<bool> requestNewPassword(String email) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      return true;
    } on FirebaseAuthException catch (error) {
      Logger('Firebase reset').error(error.message.toString());
      switch (error.code) {
        case 'invalid-email':
          throw Failure.emailNotValid;
        case 'user-not-found':
          throw Failure.userNotFound;
        default:
          throw Failure.authentication;
      }
    } catch (error) {
      Logger('Firebase reset').error(error.toString());
      throw Failure.authentication;
    }
  }

  @override
  Future<bool> updatePassword({
    required String code,
    required String password,
  }) async {
    try {
      await firebaseAuth.confirmPasswordReset(
        code: code,
        newPassword: password,
      );

      return true;
    } on FirebaseAuthException catch (error) {
      Logger('Firebase reset').error(error.message.toString());
      switch (error.code) {
        case 'expired-action-code':
          throw Failure.expiredAuthCode;
        case 'invalid-action-code':
          throw Failure.invalidAuthCode;
        case 'user-disabled':
          throw Failure.userDisabled;
        case 'weak-password':
          throw Failure.weakPassword;
        case 'user-not-found':
          throw Failure.userNotFound;
        default:
          throw Failure.authentication;
      }
    } catch (error) {
      Logger('Firebase reset').error(error.toString());
      throw Failure.authentication;
    }
  }

  @override
  Future<UserDto?> getCurrentAuthUser() async {
    return _getUserTask.run();
  }

  Future<UserDto?> _getCurrentAuthUser() async {
    final currentUser = firebaseAuth.currentUser;
    return currentUser != null
        ? UserDto.fromFirebaseAuthUser(currentUser)
        : null;
  }
}
