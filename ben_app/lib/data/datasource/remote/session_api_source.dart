import 'dart:async';

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
    } catch (error) {
      throw Exception('Sign in failed: $error');
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
        throw Exception('Sign in failed: The user is null after sign in.');
      }

      return UserDto.fromFirebaseAuthUser(credential.user!);
    } catch (error) {
      if (error is FirebaseAuthException) {
        Logger('Microsoft Auth').error(error.message.toString());
      }
      throw Exception('Sign in failed: $error');
    }
  }

  @override
  Future<void> logout() async {
    try {
      await firebaseAuth.signOut();
    } catch (error) {
      throw Exception('Sign out failed: $error');
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
    } catch (error) {
      throw Exception('Sign up failed: $error');
    }
  }

  @override
  Future<bool> requestNewPassword(String email) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      return true;
    } catch (error) {
      throw Exception('Sign up failed: $error');
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
    } catch (error) {
      throw Exception('Sign up failed: $error');
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
