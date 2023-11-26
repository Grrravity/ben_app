import 'dart:convert';

import 'package:ben_app/data/model/user_dto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class SessionLocalSource {
  Future<UserDto?> fetch();
  Future<void> upsert({required UserDto data});
  Future<void> clear();
}

class SessionLocalSourceImpl implements SessionLocalSource {
  SessionLocalSourceImpl();

  final _storage = const FlutterSecureStorage();
  static const String _tokenKey = 'sessionKey';

  @override
  Future<void> upsert({
    required UserDto data,
  }) async {
    await clear();
    await _storage.write(
      key: _tokenKey,
      value: jsonEncode(data.toJson()),
    );
  }

  @override
  Future<UserDto?> fetch() async {
    final tokenValue = await _storage.read(key: _tokenKey);
    if (tokenValue == null) return null;

    return UserDto.fromJson(
      jsonDecode(tokenValue) as Map<String, dynamic>,
    );
  }

  @override
  Future<void> clear() async {
    await _storage.delete(key: _tokenKey);
  }
}
