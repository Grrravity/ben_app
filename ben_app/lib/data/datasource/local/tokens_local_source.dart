import 'dart:convert';

import 'package:ben_app/data/model/jwt_dto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class TokensLocalSource {
  Future<JwtDto?> fetch();
  Future<void> upsert({required JwtDto data});
  Future<void> clear();
}

class TokensLocalSourceImpl implements TokensLocalSource {
  TokensLocalSourceImpl();

  final _storage = const FlutterSecureStorage();
  static const String _tokenKey = 'SeniorGoldToken';

  @override
  Future<void> upsert({
    required JwtDto data,
  }) async {
    await clear();
    await _storage.write(
      key: _tokenKey,
      value: jsonEncode(data.toJson()),
    );
  }

  @override
  Future<JwtDto?> fetch() async {
    final tokenValue = await _storage.read(key: _tokenKey);
    if (tokenValue == null) return null;

    return JwtDto.fromJson(
      jsonDecode(tokenValue) as Map<String, dynamic>,
    );
  }

  @override
  Future<void> clear() async {
    await _storage.delete(key: _tokenKey);
  }
}
