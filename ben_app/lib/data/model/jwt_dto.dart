import 'dart:convert';

import 'package:ben_app/domain/entities/token.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/jwt_dto.freezed.dart';
part 'generated/jwt_dto.g.dart';

@freezed
class JwtDto with _$JwtDto {
  const factory JwtDto({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _JwtDto;

  factory JwtDto.fromJson(Map<String, dynamic> json) => _$JwtDtoFromJson(json);

  factory JwtDto.fromJsonString(String string) => JwtDto.fromJson(
        jsonDecode(string) as Map<String, dynamic>,
      );
}

extension OnJwtDtoJson on List<Map<String, dynamic>> {
  List<JwtDto> get toDTOList {
    return map<JwtDto>(JwtDto.fromJson).toList();
  }
}

extension OnJwtDto on Token {
  JwtDto get toDto {
    return JwtDto(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }

  String get toJsonString {
    return jsonEncode(toDto.toJson());
  }
}

extension OnToTokentity on JwtDto {
  Token get toEntity {
    return Token(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
