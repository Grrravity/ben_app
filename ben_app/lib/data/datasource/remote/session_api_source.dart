import 'dart:async';

import 'package:ben_app/core/utils/async_task.dart';
import 'package:ben_app/core/utils/logger.dart';
import 'package:ben_app/data/datasource/local/session_local_source.dart';
import 'package:ben_app/data/model/user_dto.dart';
import 'package:ben_app/domain/entities/credentials.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class SessionApiSource {
  Stream<UserDto?> get sessionStateStream;

  Future<UserDto> signInWithEmailPassword(Credentials credentials);
  Future<UserDto> signupWithEmailPassword(Credentials credentials);

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
    FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance {
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
  final FirebaseAuth _firebaseAuth;

  @override
  Stream<UserDto?> get sessionStateStream =>
      _firebaseAuth.authStateChanges().map((firebaseUser) {
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
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
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
  Future<void> logout() async {
    try {
      await _firebaseAuth.signOut();
    } catch (error) {
      throw Exception('Sign out failed: $error');
    }
  }

  @override
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
    } catch (error) {
      throw Exception('Sign up failed: $error');
    }
  }

  @override
  Future<bool> requestNewPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
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
      await _firebaseAuth.confirmPasswordReset(
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
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null
        ? UserDto.fromFirebaseAuthUser(currentUser)
        : null;
  }
}
