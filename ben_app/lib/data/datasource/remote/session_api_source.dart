import 'dart:async';

import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/utils/async_task.dart';
import 'package:ben_app/core/utils/logger.dart';
import 'package:ben_app/data/model/user_dto.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class SessionApiSource {
  SessionApiSource({
    required FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth {
    _getUserTask = AsyncTask<UserDto?>(
      name: 'GetToken',
      task: () async {
        return _getCurrentAuthUser();
      },
    );
  }

  final _logger = Logger('SessionDataSource');

  // Used to avoid running concurrently multiple times the
  // token renewal operation.
  late final AsyncTask<UserDto?> _getUserTask;
  final FirebaseAuth _firebaseAuth;

  Stream<UserDto?> get sessionStateStream =>
      _firebaseAuth.authStateChanges().map((firebaseUser) {
        if (firebaseUser == null) {
          return null;
        }
        return UserDto.fromFirebaseAuthUser(firebaseUser);
      });

  Future<UserDto> signInWithEmailPassword(
    Credentials credentials,
  ) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: credentials.login,
        password: credentials.password,
      );

      if (credential.user == null) {
        throw Exception('Sign in failed: The user is null after sign in.');
      }

      return UserDto.fromFirebaseAuthUser(credential.user!);
    } on FirebaseAuthException catch (error) {
      _logger.error(error.message.toString());
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
      _logger.error(error.toString());
      throw Failure.authentication;
    }
  }

  Future<UserDto> signInWithMicrosoft() async {
    final microsoftProvider = MicrosoftAuthProvider();
    try {
      UserCredential credential;
      if (kIsWeb) {
        credential = await _firebaseAuth.signInWithPopup(microsoftProvider);
      } else {
        credential = await _firebaseAuth.signInWithProvider(microsoftProvider);
      }

      if (credential.user == null) {
        throw Failure.authentication;
      }

      return UserDto.fromFirebaseAuthUser(credential.user!);
    } on FirebaseAuthException catch (error) {
      _logger.error(error.message.toString());
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
      _logger.error(error.toString());
      throw Failure.authentication;
    }
  }

  Future<void> logout() async {
    try {
      await _firebaseAuth.signOut();
    } catch (error) {
      _logger.error(
        error is FirebaseAuthException
            ? error.message.toString()
            : error.toString(),
      );

      throw Failure.other;
    }
  }

  Future<UserDto> signupWithEmailPassword(Credentials credentials) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: credentials.login,
        password: credentials.password,
      );

      if (credential.user == null) {
        throw Exception('Sign up failed: The user is null after sign up.');
      }

      return UserDto.fromFirebaseAuthUser(credential.user!);
    } on FirebaseAuthException catch (error) {
      _logger.error(error.message.toString());
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
      _logger.error(error.toString());
      throw Failure.authentication;
    }
  }

  Future<bool> requestNewPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return true;
    } on FirebaseAuthException catch (error) {
      _logger.error(error.message.toString());
      switch (error.code) {
        case 'invalid-email':
          throw Failure.emailNotValid;
        case 'user-not-found':
          throw Failure.userNotFound;
        default:
          throw Failure.authentication;
      }
    } catch (error) {
      _logger.error(error.toString());
      throw Failure.authentication;
    }
  }

  Future<bool> updatePassword({
    required String code,
    required String password,
  }) async {
    try {
      await _firebaseAuth.confirmPasswordReset(
        code: code,
        newPassword: password,
      );

      return true;
    } on FirebaseAuthException catch (error) {
      _logger.error(error.message.toString());
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
      _logger.error(error.toString());
      throw Failure.authentication;
    }
  }

  Future<UserDto?> getCurrentAuthUser() async {
    return _getUserTask.run();
  }

  Future<UserDto?> _getCurrentAuthUser() async {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null
        ? UserDto.fromFirebaseAuthUser(currentUser)
        : null;
  }
}
