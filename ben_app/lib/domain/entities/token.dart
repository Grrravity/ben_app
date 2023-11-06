import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'generated/token.freezed.dart';

@freezed
class Token with _$Token {
  const factory Token({
    required String accessToken,
    required String refreshToken,
  }) = _Token;
}

extension OnToken on Token {
  bool get canRefresh {
    return !JwtDecoder.isExpired(refreshToken);
  }

  bool get shouldRefresh {
    return JwtDecoder.getRemainingTime(accessToken) <
        const Duration(minutes: 2);
  }
}
